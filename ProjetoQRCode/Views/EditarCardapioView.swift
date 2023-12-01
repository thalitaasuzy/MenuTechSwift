//
//  EditarCardapioView.swift
//  ProjetoQRCode
//
//  Created by User on 22/11/23.
//

import SwiftUI

struct EditarCardapioView: View {
    var body: some View {
        
        ZStack{
            VStack{
                Image("OndaVerde")
                    .frame(width: 30, height: 30)
                    .offset(x: 0, y: -348)
                
                HStack{
                    Text("􀄪") //IOS SYMBOL, COMO COLOCAR?????
                      .font(Font.custom("SF Pro", size: 16))
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                      .offset(x:-120, y:-380)
                    
                    Text("Calendário")
                        .font(Font.custom("SF Pro", size: 16))
                        .foregroundColor(.white)
                        .offset(x:-120, y:-380)
                    
                   
                }
                
            }
            VStack (spacing: 30){
                
                Text("Editar Cardápio")
                    .bold().font(.title)
                    .foregroundColor(Color(red: 0.24, green: 0.75, blue: 0.46))
                    .frame(width: 224, height: 32, alignment: .top)
                    .offset(x:-70, y:15)
               
                
                Text("Olá! Preencha os campos do formulário para criar uma nova refeição.")
                    .font(Font.custom("SF Pro", size: 13))
                    .foregroundColor(Color(red: 0.337, green: 0.341, blue: 0.356))
                    .frame(width: 370, height: 46, alignment: .topLeading)
                    .offset(x:15, y:-2)
             
                VStack (spacing: 30){
                    
                    ZStack{
                        
                        Text("Principal")
                            .font(Font.custom("SF Pro", size: 13))
                            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                            .frame(width: 340, height: 50, alignment: .topLeading)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                          .frame(width: 344.07999, height: 2)
                          .background(Color(hue: 0.0, saturation: 0.029, brightness: 0.896))
                    }
                        
                    ZStack{
                        
                        Text("Proteínas")
                            .font(Font.custom("SF Pro", size: 13))
                            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                            .frame(width: 340, height: 50, alignment: .topLeading)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                          .frame(width: 344.07999, height: 2)
                          .background(Color(hue: 0.0, saturation: 0.029, brightness: 0.896))

                    }
                    ZStack{
                        
                        Text("Frutas")
                            .font(Font.custom("SF Pro", size: 13))
                            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                            .frame(width: 340, height: 50, alignment: .topLeading)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                          .frame(width: 344.07999, height: 2)
                          .background(Color(hue: 0.0, saturation: 0.029, brightness: 0.896))

                    }
                    ZStack{
                        
                        Text("Bebidas")
                            .font(Font.custom("SF Pro", size: 13))
                            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                            .frame(width: 340, height: 50, alignment: .topLeading)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                          .frame(width: 344.07999, height: 2)
                          .background(Color(hue: 0.0, saturation: 0.029, brightness: 0.896))

                    }
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("Salvar")
                          .bold().font(.headline)
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color(red: 0.92, green: 0.95, blue: 0.96))
                          .frame(width: 313, height: 35, alignment: .center)
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 8)
                    .frame(width: 354.50665, height: 50, alignment: .topLeading)
                    .background(Color(red: 0.24, green: 0.75, blue: 0.46))
                    .cornerRadius(8)
                    .shadow(color: .black.opacity(0.15), radius: 6, x: 0, y: 2)
                }
            }
            }
    
            
           
    }
}

struct EditarCardapioView_Previews: PreviewProvider {
    static var previews: some View {
        EditarCardapioView()
    }
}
