//
//  ExibirCardapioView.swift
//  Projeto_MenuTech
//
//  Created by User on 28/11/23.
//

import SwiftUI

struct ExibirCardapioView: View {
    
    let administrador: Bool
    
    @State var adicionarRefeicao = false
    
    @State var refeicoes: [Refeicao]
    
    var body: some View {
        NavigationStack {
            ZStack{
                Image("OndaVerde")
                    .frame(width: 100, height: 880, alignment: .top)
                    .ignoresSafeArea()
                
                Text("Cardápio")
                    .font(Font.custom("SF Pro", size: 30)
                        .weight(.bold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 700, alignment: .top)
                
                
                Image("imgTelaCardapio")
                    .frame(width: 100, height: 30, alignment: .top)
                    .offset(x: 0, y: -220)
                
                
                
                TabView {
                    ForEach(refeicoes) { refeicao in
                        ExibirReficaoView(refeicao: refeicao)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                //                .navigationBarTitle("Cardápio", displayMode: .inline)
                .toolbar {
                    ToolbarItem {
                        if administrador {
                            Button("Adicionar") {
                                adicionarRefeicao = true
                            }
                            .fullScreenCover(isPresented: $adicionarRefeicao) {
                                EditarCardapioView(refeicoes: $refeicoes)
                            }
                        }
                    }
                }
            }
        }
    }
}
//}

struct ExibirReficaoView: View {
    
    var refeicao: Refeicao
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 150, height: 74)
                .cornerRadius(5)
                .foregroundColor(Color("CorPrimaria"))
                .offset(x: 0, y: -140)
            Text(refeicao.dia.formatted(date: .abbreviated, time: .omitted))
                .font(.headline)
                .offset(x: 0, y: -158)
                .foregroundColor(.white)
            
            
            Rectangle()
                .frame(width: 250, height: 440, alignment: .top)
                .foregroundColor(.white)
                .cornerRadius(25)
                .shadow(color: Color.gray.opacity(0.6), radius: 5, x:0, y:2)
                .offset(x: 0, y: 80)
            
            VStack (spacing: 40){
                Spacer()
                    .frame(height: 90)
                HStack{
                    Image("imgTelaCardapio")
                    VStack{
                        Text("Principal")
                            .font(.title3)
                            Text("\(refeicao.principal)")
                    }
                }
                HStack{
                    Image("imgTelaCardapio")
                    VStack{
                        Text("Proteínas: ")
                        Text("\(refeicao.proteinas)")

                    }
                }
                
                HStack{
                    Image("imgTelaCardapio")
                    VStack{
                        Text("Frutas: ")
                        Text("\(refeicao.frutas)")
                    }
                }
                
                HStack{
                    Image("imgTelaCardapio")
                    VStack{
                        Text("Bebidas: ")
                        Text("\(refeicao.bebidas)")
                    }
                }
                
            }
        }                .padding()
    }
}

struct ExibirCardapioView_Previews: PreviewProvider {
    static var previews: some View {
        ExibirCardapioView(administrador: true, refeicoes: [
            Refeicao(dia: .now, principal: "Arroz e Feijão Preto", proteinas: "Frango Grelhado", frutas: "Maçã", bebidas: "Suco de Laranja"),
            Refeicao(dia: .now, principal: "Arroz e Feijão", proteinas: "Frango Grelhado", frutas: "Maçã", bebidas: "Suco de Goiaba")
        ])
    }
}
