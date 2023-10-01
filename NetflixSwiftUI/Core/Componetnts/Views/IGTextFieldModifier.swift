//
//  IGTextFieldModifier.swift
//  NetflixSwiftUI
//
//  Created by Nevio Hirani on 01.10.23.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.gray)) // update to system gray 6
            .cornerRadius(10)
//            .padding(.horizontal, 24)
    }
}
