//
//  FeedStoriesView.swift
//  InstagramClone1
//
//  Created by Adam Gwóźdź on 31/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct FeedStoriesView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack{
                FeedStoriesItemView()
                FeedStoriesItemView()
                FeedStoriesItemView()
            }
        }
    }
}

struct FeedStoriesView_Previews: PreviewProvider {
    static var previews: some View {
        FeedStoriesView()
    }
}
