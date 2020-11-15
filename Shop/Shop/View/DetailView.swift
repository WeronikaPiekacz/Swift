//
//  DetailView.swift
//  Shop
//
//  Created by Adam Gwóźdź on 31/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct DetailView : View {
    
    @State var size = ""
    @Binding var show : Bool
    var i : row
    
    @State private var showingAlert = false
    @State private var go = false
    //@State private var sizeCheck = false
    
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
            
                Button(action: {
                    
                }){
                    Image("shop")
                        .renderingMode(.original)
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
            Spacer()
            
            Image(i.image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 350, height: 350)
                
            HStack{
                VStack(alignment: .leading, spacing: 10){
                        
                    Text(i.name)
                        .font(.largeTitle)
                    Text(i.price)
                        .font(.title).bold()
                }
                
                Spacer()
            }
            
            Spacer()
            
            HStack{
                
                Spacer()
                
                Text("Select Size  ")
                    .font(.title)
                    .padding(10)
                ForEach(sizes,id: \.self){j in
                    
                    Button(action: {
                        
                        self.size = j
                       // self.sizeCheck = true
                        
                    }) {
                        Text(j)
                            .bold()
                            .padding().border(Color.black, width: self.size == j ? 1.5 : 0)
                            .foregroundColor(.black)
                    }
                }
            }
            
            Spacer()
            
            
            HStack{
              //  if(sizeCheck) {
                    
                    NavigationLink(destination: CartView(show: self.$go), isActive: self.$go)
                    {
                        Button(action: {
                            
                            self.showingAlert = true
                            //self .sizeCheck = false
                            
                        }){
                            Text("Add To Cart")
                                .bold()
                                .font(.title)
                                .padding(10)
                                .foregroundColor(.white)
                                .background(Color.black)
                        }
                        .alert(isPresented:$showingAlert) {
                            Alert(title: Text("Added to cart"), primaryButton:
                                .default(Text("Go to cart"), action: {
                                self.go = true
                            })
                                , secondaryButton: .cancel())
                        }
                    }
             //   }
               /* else {
                        Button(action: {
                            
                            self.showingAlert = true
                            
                        }){
                            Text("Add To Cart").bold().font(.title).padding(10).foregroundColor(.white).background(Color.black)
                        }        .alert(isPresented:$showingAlert) {
                            Alert(title: Text("Select Size"), primaryButton: .cancel(), secondaryButton: .default(Text("Continue").bold().font(.title)))
                        }
                    }*/
            }
            Spacer()
            
        }
        .padding()
    }
}

