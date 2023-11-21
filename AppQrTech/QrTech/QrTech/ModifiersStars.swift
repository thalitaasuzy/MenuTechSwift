//
//  ModifiersStars.swift
//  QrTech
//
//  Created by User on 07/11/23.
//

import SwiftUI

struct ModifiersStars: ViewModifier {
    @Binding var taPressionada: Bool
  var cor: Color
    func body(content: Content) -> some View {
        content
            .overlay(alignment: .bottomTrailing){
            Button("") {
                taPressionada.toggle()
            }.buttonStyle(Stars(taPressionada: $taPressionada, cor: cor))
                    .padding (12)
            }
        }
    }
extension View{
    func estrela(taPressionada: Binding<Bool>, cor: Color)-> some View{
        modifier(ModifiersStars(taPressionada: taPressionada, cor: cor))
    }
    
}
