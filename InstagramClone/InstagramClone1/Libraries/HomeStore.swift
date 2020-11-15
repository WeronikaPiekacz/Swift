//
//  HomeStore.swift
//  InstagramClone1
//
//  Created by Adam Gwóźdź on 31/08/2020.
//  Copyright © 2020 Adam Gwóźdź. All rights reserved.
//

import SwiftUI

class HomeStore: ObservableObject {
    @Published var objects = [FeedItem]()
     
    func fetch() {
        let url = URL(string: "http://www.json-generator.com/api/json/get/cfTHYaYEwO?indent=2")!
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                if let todoData = data {
                    let decodedData = try JSONDecoder().decode([FeedItem].self, from: todoData)
                    DispatchQueue.main.async {
                        self.objects = decodedData
                    }
                } else {
                    print("No data")
                }
            } catch {
                print("Error")
            }
        }.resume()
    }
}

struct HomeStore_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
