//
//  Stars.swift
//  QrTech
//
//  Created by User on 07/11/23.
//
import SwiftUI
struct Stars: ButtonStyle{
    
    @Binding var taPressionada: Bool
    var cor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        Image(systemName: taPressionada ? "star.fill" : "star")
            .resizable()
            .fontWeight(.thin)
            .foregroundStyle(cor)
            .frame(width: 45 , height: 45)
            
                
        
    }
}
