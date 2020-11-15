//
//  CartView.swift
//  Shop
//
//  Created by Adam Gwóźdź on 31/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct CartView : View {
    
    @Binding var show : Bool
    
    var body : some View {
        VStack{
            
            HStack{
                Button(action: {
                        
                    self.show.toggle()
                    
                }){
                    Image("Back")
                        .renderingMode(.original)
                }
                Spacer()
                
                Text("Cart").font(.largeTitle)
            
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
            Spacer()
            
        }.padding()
    }
}

