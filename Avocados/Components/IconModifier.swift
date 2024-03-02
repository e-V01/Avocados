//
//  IconModifier.swift
//  Avocados
//
//  Created by Y K on 02.03.2024.
//

import SwiftUI

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 45, height: 45, alignment: .center)
    }
}
