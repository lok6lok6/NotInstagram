//
//  AddEmailView.swift
//  NotInstagram
//
//  Created by Myles Slack on 2026.02.27.
//

import SwiftUI

struct AddEmailView: View {
    var body: some View {
        
        VStack(spacing: 12) {
            Text("Add your email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
        }
    }
}

#Preview {
    AddEmailView()
}
