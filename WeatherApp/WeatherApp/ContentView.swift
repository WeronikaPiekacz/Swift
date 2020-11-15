//
//  ContentView.swift
//  WeatherApp
//
//  Created by Adam Gwóźdź on 06/09/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store = HomeStore()
    var body: some View {
        ZStack{
         Rectangle()
            .foregroundColor(Color("BackgroundColor"))
            .edgesIgnoringSafeArea(.all)
            VStack {
                FeedHeaderView()
                ForEach(store.objects, id: \.name) { item in
                    FeedContentView(item: item)
                }
                FeedFooterView()
            }
            .padding(10)
        }
        .onAppear {
            self.store.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
