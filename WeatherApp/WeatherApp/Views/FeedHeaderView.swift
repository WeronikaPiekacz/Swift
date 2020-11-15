//
//  FeedHeaderView.swift
//  WeatherApp
//
//  Created by Adam Gwóźdź on 06/09/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct FeedHeaderView: View {
    var body: some View {
        VStack(alignment: .center) {
            VStack{
                Text("20.05.1999")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.white)
                Text("Poniedziałeczek")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color.white)
            }
            .padding(15)
            .background(Color("BackgroundColor2"))
            .cornerRadius(50)

            Image("Cloud")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .padding(25)
            
        }
    }
}

struct FeedHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FeedHeaderView()
    }
}
