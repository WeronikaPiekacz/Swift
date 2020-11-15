//
//  FeedFooterView.swift
//  WeatherApp
//
//  Created by Adam Gwóźdź on 06/09/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct FeedFooterView: View {
    var body: some View {
        VStack(alignment: .leading) {
            FeedItemFooterView()
            FeedItemFooterView()
            FeedItemFooterView()
            FeedItemFooterView()
            FeedItemFooterView()
            FeedItemFooterView()
        }
        .padding(15)
        .background(Color("BackgroundColor2"))
        .cornerRadius(50)
    }
}

struct FeedFooterView_Previews: PreviewProvider {
    static var previews: some View {
        FeedFooterView()
    }
}
