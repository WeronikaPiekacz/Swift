//
//  FeedItemHeaderView.swift
//  InstagramClone1
//
//  Created by Adam Gwóźdź on 31/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct FeedItemHeaderView: View {
    var item: FeedItem
    var body: some View {
        HStack{
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.gray)
            VStack(alignment: .leading){
                Text(item.name ?? "")
                    .fontWeight(.medium)
                    .font(.callout)
                Text(item.address ?? "")
                    .fontWeight(.medium)
                    .font(.callout)
                
            }
            Spacer()
            Image(systemName: "pencil.and.ellipsis.rectangle")
        }
    }
}

