//
//  LogInView.swift
//  NetflixSwiftUI
//
//  Created by Nevio Hirani on 01.10.23.
//

import SwiftUI

struct LogInView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("netflix-wallpaper")
                    .resizable()
                    .scaledToFill()
                    .overlay {
                        Rectangle()
                            .foregroundColor(.black)
                            .opacity(0.6)
                    }
                VStack {
                    // MARK: - Logo
                    Image("netflix logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                    
                    // MARK: - Login
                    
                }
            }
        }
    }
}

#Preview {
    LogInView()
}
