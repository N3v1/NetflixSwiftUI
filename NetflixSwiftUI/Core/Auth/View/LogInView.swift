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
                            .frame(width: 400) // height: 100
                        
                        SecureField("Enter your password", text: $password)
                            .autocorrectionDisabled()
                            .modifier(IGTextFieldModifier())
                            .frame(width: 400) // height: 100
                    }
                    // MARK: - LogIn Button
                    Button {
                        // TODO: Add login func
                        print("Log in")
                    } label: {
                        Text("Login")
                            .modifier(IGButtonModifier())
                            .frame(width: 200, height: 44)
                            .tint(Color.black)
                            .buttonStyle(.borderedProminent)
                            .controlSize(.large)
                    }
                    
                    // MARK: - SignUp Flow
                    Spacer()
                    Divider()
                    
                    NavigationLink {
                        SignUpView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        HStack(spacing: 3) {
                            Text("Don't have an account?")
                            Text("Sign Up")
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
}

#Preview {
    LogInView()
}
