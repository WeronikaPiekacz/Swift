//
//  FeedItemFooterView.swift
//  InstagramClone1
//
//  Created by Adam Gwóźdź on 31/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct FeedItemFooterView: View {
    var item: FeedItem
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Button(action: {
                    print("Test")
                }) {
                    Image(systemName: "heart")
                }
                Spacer()
            }
            HStack{
                Text("\(item.name ?? ""): \(item.about ?? "")")
                    .font(.callout)
               Spacer()
            }
        }
    }
}
