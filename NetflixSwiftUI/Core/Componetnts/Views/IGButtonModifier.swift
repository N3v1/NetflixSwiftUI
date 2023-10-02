//
//  IGButtonModifier.swift
//  NetflixSwiftUI
//
//  Created by Nevio Hirani on 01.10.23.
//

import SwiftUI

struct IGButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
    }
}
