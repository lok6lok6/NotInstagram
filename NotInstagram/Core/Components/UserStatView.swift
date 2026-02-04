//
//  UserStatView.swift
//  NotInstagram
//
//  Created by Myles Slack on 2026.02.03.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack(spacing: 4) {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }
        .frame(maxWidth: 80)
    }
}

#Preview {
    UserStatView(value: 123, title: "Posts")
}
