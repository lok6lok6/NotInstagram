//
//  LoginView.swift
//  NotInstagram
//
//  Created by Myles Slack on 2026.02.15.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Spacer()
                
                Image("NotIGWorse")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                
                VStack {
                    TextField("Email", text: $email)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    SecureField("Password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
                
                Button {
                    print("Show Forgot Password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button {
                    print("Login")
                } label: {
                    Text("Log In")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.vertical)
                
                GeometryReader { geo in
                    HStack(spacing: 10) {
                        Rectangle().frame(width: (geo.size.width - 40) / 2, height: 0.5)
                        
                        Text("OR").font(.footnote).fontWeight(.semibold)
                        
                        Rectangle().frame(width: (geo.size.width - 40) / 2, height: 0.5)
                    }
                    .foregroundStyle(.gray)
                }
                .frame(height: 35)
                .padding(.horizontal, 24)
                
                HStack {
                    Image("Facebook_logo")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                //make space to seperate navi link
                Spacer()
                
                Divider()
                
                NavigationLink {
                    Text("Sign Up")
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                            .font(.footnote)
                        Text("Sign Up")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
