//
//  FozylTextFieldModifier.swift
//  Fozyl
//
//  Created by GAPT on 20/08/23.
//

import SwiftUI

/**
 Es una plantilla para los campos de texto
 */

struct FozylTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
        
    }
}
