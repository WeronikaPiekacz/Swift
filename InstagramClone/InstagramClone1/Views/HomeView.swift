//
//  HomeView.swift
//  InstagramClone1
//
//  Created by Adam Gwóźdź on 30/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var store = HomeStore()
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    FeedStoriesView()
                    ForEach(store.objects, id: \.name){ item in
                        FeedItemView(item: item)
                    }
                }
                .padding()
            }
            .navigationBarTitle(Text("Instagram"), displayMode: .inline)
        }
        .onAppear{
            self.store.fetch()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
