//
//  FeedItemImageFooterView.swift
//  WeatherApp
//
//  Created by Adam Gwóźdź on 06/09/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct FeedItemImageFooterView: View {
    var body: some View {
        HStack {
            Image("Storm")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35)
        }
    }
}

struct FeedItemImageFooterView_Previews: PreviewProvider {
    static var previews: some View {
        FeedItemImageFooterView()
    }
}
