//
//  Cards.swift
//  Shop
//
//  Created by Adam Gwóźdź on 31/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct CardsView : View {
    
    @State var show = false
    var row : row
    var body : some View{
        
        VStack(spacing: 8)
        {
            NavigationLink(destination: DetailView(show: self.$show, i: row), isActive: self.$show){
                
                Image(row.image)
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2 - 25, height: 180)
            }
            
            
            HStack{
                Text(row.name)
                Text(row.price).fontWeight(.heavy)
            }
            Spacer()
        }
    }
}
