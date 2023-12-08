//
//  AppState.swift
//  Projeto_MenuTech
//
//  Created by User on 08/12/23.
//

import SwiftUI

extension String {
    
    init(date: Date) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yy"
        self = formatter.string(from: date)
    }
    
}

class AppState: ObservableObject {
    
    @Published var refeicoes: [Refeicao] = [
        Refeicao(dia: .now, principal: "Arroz e Feijão Preto", proteinas: "Carne acebolada", frutas: "Maçã", bebidas: "Suco de Laranja"),
        Refeicao(dia: .now, principal: "Arroz e Feijão", proteinas: "Frango Grelhado", frutas: "Maçã", bebidas: "Suco de Goiaba"),
        Refeicao(dia: .now, principal: "Arroz e Macarrão", proteinas: "Carne Bovina", frutas: "Banana", bebidas: "Suco de Maracujá")
    ]
    
    @Published var avaliacoes: [String: Avaliacao] = ["07/12/23": Avaliacao(rating: 5, comentario: "muito bom")]
}
