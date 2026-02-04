//
//  ProfileView.swift
//  NotInstagram
//
//  Created by Myles Slack on 2026.02.03.
//

import SwiftUI

struct ProfileView: View {
    
    private let grideItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                //Header
                VStack(spacing: 10) {
                    
                    //pictures and stats
                    HStack {
                        Image("meHongKongBeach")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                        
                        Spacer()
                        
                        HStack(spacing: 8){
                            
                            UserStatView(value: 123, title: "Posts")
                            
                            UserStatView(value: 456, title: "Followers")
                            
                            UserStatView(value: 789, title: "Following")
                        }
                    }
                    .padding(.vertical)
                    .padding(.horizontal)
                    
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
                
                // Post grid View
                
                LazyVGrid(columns: grideItems, spacing: 1) {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("FavoriteMoonCake")
                            .resizable( )
                            .scaledToFill( )
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
