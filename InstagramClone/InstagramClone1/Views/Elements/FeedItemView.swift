//
//  FeedItemView.swift
//  InstagramClone1
//
//  Created by Adam Gwóźdź on 31/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct FeedItemView: View {
    var item: FeedItem
    var body: some View {
        VStack{
            FeedItemHeaderView(item: item)
            FeedItemContentView(picture: item.picture ?? "")
            FeedItemFooterView(item: item)
        }
    }
}

