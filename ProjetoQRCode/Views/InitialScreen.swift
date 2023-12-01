//
//  InitialScreen.swift
//  ProjetoQRCode
//
//  Created by User on 20/10/23.
//

import SwiftUI

struct InitialScreen: View {
    var body: some View {
        VStack{
            ZStack{
                Image("Back")
                    .frame(width: .infinity, height: .infinity)
                    .padding(5)
                VStack{
                    Text("Bem-Vindo(a) à QR Tech!")
                        .font(
                            Font.custom("San Francisco", size: 36)
                                .weight(.bold)
                               
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.22, green: 0.21, blue: 0.21))
                        .frame(width: 283, height: 100, alignment: .center)
                        .padding(10)
                    HStack{
                        Image("StudentButton")
                        Image("AdminButton")
                        
                    }

                }
            }
        }
    }
}
struct InitialScreen_Previews: PreviewProvider {
    static var previews: some View {
        InitialScreen()
    }
}
