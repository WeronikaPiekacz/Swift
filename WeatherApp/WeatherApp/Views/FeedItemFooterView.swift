//
//  FeedItemFooterView.swift
//  WeatherApp
//
//  Created by Adam Gwóźdź on 06/09/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct FeedItemFooterView: View {
    var body: some View {
        ZStack {
            HStack{
                Text("Day:")
                    .font(.title)
                    .foregroundColor(Color.white)
                Spacer()
                Text("20°C")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .bold()
                
            }
            FeedItemImageFooterView()
        }
    }
}

struct FeedItemFooterView_Previews: PreviewProvider {
    static var previews: some View {
        FeedItemFooterView()
    }
}
