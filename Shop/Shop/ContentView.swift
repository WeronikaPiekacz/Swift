//
//  ContentView.swift
//  Shop
//
//  Created by Adam Gwóźdź on 29/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
            NavigationBarView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct type : Identifiable{
    
    var id : Int
    var rows : [row]
    
}
var sizes = ["S","M","X","XL"]

var types = ["Skirt","Pants","Top","T-Shirt","Necklaces"]

var datas = [
    

    type(id: 0,rows: [row(id:0,name: "Fit And Flare",  price: "$99",image: "skirt"),row(id:1,name: "Super Pants", price: "$85", image: "trousers")]),

    type(id: 1,rows: [row(id:3,name: "Summer Vibes", price: "$13", image: "t-shirt"),row(id:4,name: "Flora Fun", price: "$110", image: "necklaces")]),
    
    type(id: 2,rows: [row(id:4,name: "Summer Vibes", price: "$120", image: "necklaces2"),row(id:2,name: "Flora Fun", price: "$35", image: "top2")]),
        
    type(id: 3,rows: [row(id:2,name: "Flora Fun", price: "$35", image: "top1")]),
    

]

