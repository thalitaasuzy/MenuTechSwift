//
//  TelaDoPopUp.swift
//  QRTechView
//
//  Created by User on 24/11/23.
//

import SwiftUI

struct TelaDoPopUp: View {
    
    @State var isShowing: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Button("CLIQUE EM MIM") {
                withAnimation(.spring()) {
                    isShowing = true
                }
            }
            if isShowing {
                PopUp(isShowing: $isShowing)
                    .frame(width: 314,height: 414)
            }
        }
    }
    
}

struct PopUp: View {
    
    @State var text: String = ""
    @Binding var isShowing: Bool
    
    
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 27, height: 27))
            .fill(.white)
            .overlay {
                VStack(spacing: 24) {
                    VStack(spacing: 16) {
                        Text("Avalie seu almoço")
                            .font(.title2)
                            .fontWeight(.semibold)
                        VStack(spacing: 8) {
                            Text("O que você achou do almoço?")
                            VStack(spacing: 12) {
                                Text("Escolha entre 1 e 5 estrelas para classificar")
                                //"ESTRELAS"
                            }
                        }
                    }
                    Text("Comentarios adicionais")
                    TextEditor(text: $text).border(.gray)
                        .frame(width: 247,height: 79)
                        .cornerRadius(2)
                    Spacer()
                        Rectangle()
                        .fill(Color("CorPrimaria"))
                        .frame(height: 40)
                        .onTapGesture {
                            isShowing = false
                        }
                }
                .foregroundStyle(.black)
            }
    }
    
}


struct TelaDoPopUpPreview: PreviewProvider {
    
    static var previews: some View {
        TelaDoPopUp()
    }
    
}
