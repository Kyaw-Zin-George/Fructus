//
//  FruitCardView.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 2/22/25.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK: Properties
    @State private var isAnimating : Bool = false
    var fruit: Fruit
    //MARK: Body
    var body: some View {
        ZStack {
            //Background color
            
            VStack(spacing: 20) {
                // Fruit: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color:.black, radius: 6, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0: 0.6)
                //Fruit: Title
                Text(fruit.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color:Color(red:0, green: 0, blue: 0, opacity: 0.15),radius: 2, x: 2, y: 2)
                //Fruit: Headline
                Text(fruit.headline)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                //Button: Start
                StartButtonView()
            }//VStack
        }//ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 2)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors:fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 20)
    }
}

//MARK: Preview
#Preview {
    FruitCardView(fruit: fruitsData[5])
}
