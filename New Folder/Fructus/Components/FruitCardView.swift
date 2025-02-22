//
//  FruitCardView.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 2/22/25.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK: Properties
    
    //MARK: Body
    var body: some View {
        VStack(spacing: 20) {
            // Fruit: Image
            Image("blueberry")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            //Fruit: Title
            Text("Blueberry")
            //Fruit: Headline
            //Button: Start
        }//VStack
    }
}

//MARK: Preview
#Preview {
    FruitCardView()
}
