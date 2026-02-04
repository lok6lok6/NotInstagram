//
//  FeedCell.swift
//  NotInstagram
//
//  Created by Myles Slack on 2026.02.03.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            //Image + usernane
            HStack {
                Image("BossBabe")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("theRealBossBabe")
                    .font(Font.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading)
            
            //picture
            Image("BossBabe")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            //action buttons
            HStack(spacing: 16) {
                Button{
                    print("like post")
                }label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button{
                    print("comment on post")
                }label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button{
                    print("Share post")
                }label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.top, 4)
            .padding(.leading, 8)
            .foregroundColor(.black)
            
            //likes labe;
            Text("23 Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                
            // caption label
            HStack{
                Text("theRealBossBabe ").fontWeight(.semibold) +
                Text(" Its great to be a real boss babe chasing the bag CashApp: $BossBabe123")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
         
            //Time stamp
            Text("6 hours ago")
                .font(.footnote)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
        }
    }
}

#Preview {
    FeedCell()
}
