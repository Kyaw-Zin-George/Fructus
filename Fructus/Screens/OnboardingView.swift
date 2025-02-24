//
//  OnboardingView.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 2/24/25.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        TabView{
            ForEach(0..<5) { item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
//MARK: PREVIEW
#Preview {
    OnboardingView()
}
