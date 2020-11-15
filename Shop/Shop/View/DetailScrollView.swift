//
//  DetailScrollView.swift
//  Shop
//
//  Created by Adam Gwóźdź on 31/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct DetailsScrollView : View {
    
    @State var show = false
    
    var body : some View{
        
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(spacing: 12){
                
                ForEach(datas){i in
                    
                    HStack{
                        
                        ForEach(i.rows){j in
                            
                            CardsView(row: j)
                            
                        }
                    }
                }
            }
        }
    }
}

