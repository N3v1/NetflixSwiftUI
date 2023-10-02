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
                        .frame(width: 400)
                    
                    SecureField("Enter your password", text: $password)
                        .autocorrectionDisabled()
                        .modifier(IGTextFieldModifier())
                        .frame(width: 400)
                    
                    TextField("Enter your full name", text: $fullname)
                        .modifier(IGTextFieldModifier())
                        .frame(width: 400)
                    
                    TextField("Enter an username", text: $username)
                        .modifier(IGTextFieldModifier())
                        .frame(width: 400)
                }
                
                // MARK: - LogIn Button
                Button {
                    // TODO: Add login func
                    print("Sign up")
                } label: {
                    Text("Sign up")
                        .modifier(IGButtonModifier())
                }
                
                // MARK: - SignUp Flow
                Spacer()
                Divider()
                
                NavigationLink {
                    LogInView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3) {
                        Text("Already have an account??")
                        Text("Log in")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.white)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    SignUpView()
}
