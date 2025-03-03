//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 3/3/25.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: PROPERTIES
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    //MARK: BODY
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
}
