//
//  ButtonVIew.swift
//  StateAndDataFlow
//
//  Created by brubru on 24.10.2022.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .buttonModification(color: color)
        }
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Title", color: .red, action: {})
    }
}
