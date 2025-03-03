//
//  FruitRowView.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 3/3/25.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: PROPERTIES
    var fruit: Fruit
    //MARK: BODY
    var body: some View {
        HStack{
            Image(fruit.image)
            //to prevent the system to change the color of the image in accordance with the system
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red:0,green: 0,blue: 0,opacity: 0.3),radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .trailing)
                )
                .clipShape(RoundedRectangle(cornerRadius: 8))
            VStack(alignment: .leading){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

struct FruitRowView_Previews: PreviewProvider{
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
   
}
