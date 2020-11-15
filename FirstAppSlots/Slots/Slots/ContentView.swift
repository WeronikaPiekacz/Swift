//
//  ContentView.swift
//  Slots
//
//  Created by Adam Gwóźdź on 28/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private var symbols = ["apple","star","cherry"]
    @State private var numbers = [2,2,2]
    
    @State private var credits = 100
    var body: some View {
        ZStack{
            
            Rectangle().foregroundColor(Color(red: 255/255, green: 160/255, blue: 130/255)).edgesIgnoringSafeArea(.all)
            
            Rectangle().foregroundColor(Color(red: 255/255, green: 200/255, blue: 170/255)).rotationEffect(Angle(degrees: -50)).edgesIgnoringSafeArea(.all)
    
            VStack{
               Spacer()
                //title
               // HStack{
                
                    
                Text("Slots").bold().foregroundColor(Color(red: 255/255, green: 100/255, blue: 80/255)).scaleEffect(3).padding(3)
                    
                    Image(systemName: "heart.fill").foregroundColor(Color(red: 255/255, green: 100/255, blue: 80/255).opacity(0.5)).scaleEffect(2).padding(20)
                 //   }.scaleEffect(3)

                
                Text("Credits: " + String(credits)).foregroundColor(Color(red: 255/255, green: 100/255, blue: 70/255)).padding(.all, 8).background(Color.white.opacity(0.4)).cornerRadius(12).scaleEffect(1.5).padding(40)
                

                
                //cards
                HStack{
                    Spacer()
                    Image(symbols[numbers[0]]).resizable().aspectRatio(1, contentMode: .fit).background(Color.white.opacity(0.4)).cornerRadius(30)
                    
                    Image(symbols[numbers[1]]).resizable().aspectRatio(1, contentMode: .fit).background(Color.white.opacity(0.4)).cornerRadius(30)
                    
                    Image(symbols[numbers[2]]).resizable().aspectRatio(1, contentMode: .fit).background(Color.white.opacity(0.4)).cornerRadius(30)
                    Spacer()
                }

                
                Button(action: {
                    
                    self.credits -= 1
                    
                    self.numbers[0] = Int.random(in: 0...self.symbols.count - 1)
                    
                    self.numbers[1] = Int.random(in: 0...self.symbols.count - 1)
                    
                    self.numbers[2] = Int.random(in: 0...self.symbols.count - 1)
                    
                    //check winnings
                    if self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2]{
                        self.credits += 5
                    }

                }) {
                    Text("Spin").bold().foregroundColor(Color.white).padding(.all, 4).padding([.leading,.trailing], 20).background(Color(red: 255/255, green: 100/255, blue: 70/255).opacity(0.7)).cornerRadius(10).scaleEffect(2).padding(40)
                    
                }
            Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
