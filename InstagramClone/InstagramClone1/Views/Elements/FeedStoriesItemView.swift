//
//  FeedStoriesItemView.swift
//  InstagramClone1
//
//  Created by Adam Gwóźdź on 31/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct FeedStoriesItemView: View {
    var body: some View {
        Circle()
            .frame(width: 50, height: 50)
            .foregroundColor(.gray)
    }
}

struct FeedStoriesItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeedStoriesItemView()
    }
}
