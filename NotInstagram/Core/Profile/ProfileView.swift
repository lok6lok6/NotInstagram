//
//  ProfileView.swift
//  NotInstagram
//
//  Created by Myles Slack on 2026.02.03.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            
            //Header
            VStack {
                
                //pictures and stats
                HStack {
                    
                }
                
                //Name and Bio
                VStack(alignment: .leading , spacing: 4) {
                    Text("Myles Slack")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("Im sliving my life like its golden!")
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                // Action button
                Button{
                    //Action
                }label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1)
                        )
                }
                
                Divider()
            }
            
            // Post grid Vie
        }
    }
}

#Preview {
    ProfileView()
}
