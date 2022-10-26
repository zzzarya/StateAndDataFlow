//
//  ButtonViewModifier.swift
//  StateAndDataFlow
//
//  Created by Антон Заричный on 26.10.2022.
//

import SwiftUI

struct ButtonViewModifier: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
            .background(color)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4)
            )
    }
}

extension View {
    func buttonModification(color: Color) -> some View {
        ModifiedContent(content: self, modifier: ButtonViewModifier(color: color))
    }
}
