//
//  OnboardingView.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 2/24/25.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: PROPERTIES
    var fruits: [Fruit] = fruitsData
    //MARK: BODY
    var body: some View {
        TabView{
            ForEach(fruits[0..<5]) { item in
                FruitCardView(fruit: item )
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
//MARK: PREVIEW
#Preview {
    OnboardingView(fruits:fruitsData)
}
