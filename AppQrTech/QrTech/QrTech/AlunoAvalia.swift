//
//  AlunoAvalia.swift
//  QrTech
//
//  Created by User on 07/11/23.
//

import SwiftUI

struct AlunoAvalia: View {
    
    var body: some View {
        ZStack{
                Image("OndaVerde")
                .frame(width: 30, height: 900, alignment: .top
                )

                Text("Avalie o almoço de hoje:")
                    .font(Font.custom("Average Sans", size: 25))
                    .foregroundColor(Color(red: 0.22, green: 0.21, blue: 0.21))
                    .frame(width: 330, height: 500, alignment: .topLeading)
            
        }
    }
}

struct AlunoAvalia_Previews: PreviewProvider {
    static var previews: some View {
        AlunoAvalia()
    }
}
