//
//  FeedContentView.swift
//  WeatherApp
//
//  Created by Adam Gwóźdź on 06/09/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct FeedContentView: View {
    var item : FeedItem
    var body: some View {
        HStack {
            Text(item.name ?? "DUŻA")
                .font(.title)
                .bold()
                .foregroundColor(Color.white)
            Spacer()
            Text(item.temp_c ?? "DUPA")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color.white)
                        
        }
        .padding(20)
        .background(Color("BackgroundColor2"))
        .cornerRadius(50)
        
    }
}

