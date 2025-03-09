//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 3/3/25.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: PROPERTIES
    var fruit: Fruit
    //MARK: BODY
    var body: some View {
        
        NavigationStack{
            ScrollView(.vertical, showsIndicators: true){
                VStack(alignment: .center, spacing: 20){
                    //Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        //Header
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //Nutrients
                        FruitNutrientsView(fruit: fruit)
                        //Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                        
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                
            }//VStack
            .navigationTitle(fruit.title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(.hidden)
            .ignoresSafeArea()
        }//: Scroll
        //Navigation
        
       
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[4])
}
