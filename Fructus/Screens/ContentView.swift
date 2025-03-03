//
//  ContentView.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 2/21/25.
//

import SwiftUI

struct ContentView: View {
    // MARK: PROPERTIES
    var fruit: [Fruit] = fruitsData
    var body: some View {
        NavigationStack{
            
            List{
                ForEach(fruit.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                        
                }
            }
            .navigationTitle("Fruits Encyclopedia")
        }
    }
}

#Preview {
    ContentView()
}
