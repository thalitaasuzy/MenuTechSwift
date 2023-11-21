//
//  HomeAdminView.swift
//  QrTech
//
//  Created by User on 10/11/23.
//

import SwiftUI

struct HomeAdminView: View {
    
    var body: some View {
        VStack {
            ZStack{
                Image("OndaVerde")
                    .frame(width: 100, height: 880, alignment: .top)
                
                Text("Home")
                    .font(Font.custom("SF Pro", size: 25))
                    .foregroundColor(.white)
                    .offset(x: 0, y: -340)
                
                VStack (spacing: 30){
                    Spacer()
                        .frame(height: 45)
                    
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 328, height: 250)
                            .background(.white)
                            .cornerRadius(20)
                            .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
                        Image("retanguloVerde")
                        Image("GarfoPratoColher")
                        
                        VStack{
                            Text("Editar Cardápio")
                                .font(Font.custom("Average Sans", size: 14))
                                .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                                .frame(width: 140, height: 30, alignment: .leading)
                                .offset(x: -70, y: 100)
                            
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 328, height: 250)
                            .background(.white)
                            .cornerRadius(20)
                            .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
                        Image("retanguloVerde")
                        Image("EstrelaHome")
                        
                        VStack{
                            Text("Consultar Avaliações")
                                .font(Font.custom("Average Sans", size: 14))
                                .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                                .frame(width: 140, height: 30, alignment: .leading)
                                .offset(x: -70, y: 100)
                            
                        }
                    }
                }
            }
        }
    }
}


struct HomeAdminView_Previews: PreviewProvider {
    static var previews: some View {
        HomeAdminView()
    }
}

//struct DetailView: View {
//    var body: some View {
//        Text("This is the detail view")
//    }
//}
//
//struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            VStack {
//                NavigationLink("Show Detail View") {
//                    DetailView()
//                }
//            }
//            .navigationTitle("Navigation")
//        }
//    }
//}
// hacking swift navigationstack e navigationlink
