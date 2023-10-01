//
//  SignUpView.swift
//  NetflixSwiftUI
//
//  Created by Nevio Hirani on 01.10.23.
//

import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var fullname = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
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
                Spacer()
                // MARK: - Logo
                Image("netflix logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .padding()
                
                // MARK: - Login
                VStack {
                    TextField("Enter your email", text: $email)
                        .autocorrectionDisabled()
                        .modifier(IGTextFieldModifier())
                        .frame(width: 400, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    
                    SecureField("Enter your password", text: $password)
                        .autocorrectionDisabled()
                        .modifier(IGTextFieldModifier())
                        .frame(width: 400, height: 100)
                    
                    TextField("Enter your full name", text: $fullname)
                        .modifier(IGTextFieldModifier())
                        .frame(width: 400, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    
                    TextField("Enter an username", text: $username)
                        .modifier(IGTextFieldModifier())
                        .frame(width: 400, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                }
                
            }
        }
    }
}

//#Preview {
//    SignUpView()
//}
