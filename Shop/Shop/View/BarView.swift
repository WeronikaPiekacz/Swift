//
//  BarView.swift
//  Shop
//
//  Created by Adam Gwóźdź on 31/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct BarView: View {
    var body : some View{
        
        VStack(spacing: 10){
            
            HStack{
                
                HStack{
                    Button(action:{
                        
                    }){
                        HStack{
                            Text("Dress")
                            Spacer()
                            Image("down")
                        }
                        .padding()
                    }
                    .foregroundColor(.black)
                    
                    Button(action : {
                        
                    }){
                        Image("filter")
                            .renderingMode(.original)
                            .padding()
                    }
                }
                .background(Color.white).border(Color.black)
            }
            
            Spacer()
            DetailsScrollView()
            
            }
        .padding()
        .background(Color("Color"))
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
