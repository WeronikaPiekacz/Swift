//
//  NavigationBarView.swift
//  Shop
//
//  Created by Adam Gwóźdź on 31/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct NavigationBarView: View {
    @State var show = false
    var body: some View {
        NavigationView{
            
            VStack{
                ZStack{
                    Text("SHOP").font(.largeTitle)
                    HStack{
                        Button(action: {
                            
                        }){
                            Image("Menu")
                                .renderingMode(.original)
                        }
                        Spacer()
                        
                        Button(action: {
                            
                        }){
                            Image("search")
                                .renderingMode(.original)
                                .padding(15)
                        }
                        
                        Button(action: {
                            
                        }){
                            NavigationLink(destination: CartView(show: self.$show), isActive: self.$show)
                            {
                                Image("shop")
                                    .renderingMode(.original)
                            }
                            
                        }
                    }
                }
                .background(Color.white)
                .padding([.leading,.trailing,.top], 15)
                
                BarView()
                }
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
