//
//  FeedItemContentView.swift
//  InstagramClone1
//
//  Created by Adam Gwóźdź on 31/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct FeedItemContentView: View {
    var picture: String
    var body: some View {
        ZStack{
           /* Rectangle()
                .frame(height: 300)
                .foregroundColor(.gray)
                .cornerRadius(10) */
            AsyncImage(url: picture, placeholder:
            Image(systemName: "photo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .opacity(0.2)
            )
        }
    }
}


