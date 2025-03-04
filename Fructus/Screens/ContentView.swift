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
    @State private var isShowingSettings : Bool = false
    var body: some View {
        NavigationStack{
            
            List{
                ForEach(fruit.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                        
                }
            }
            .navigationTitle("Fruits Encyclopedia")
            .toolbar(content:{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {isShowingSettings = true}) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                }
            })
        }
    }
}

#Preview {
    ContentView()
}
