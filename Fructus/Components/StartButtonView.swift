//
//  StartButtonView.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 2/24/25.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: Properties
    
    //MARK: BODY
    var body: some View {
        Button(action: {print("Exited Onboarding Screen")}) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background{
                Capsule().strokeBorder(Color.white,lineWidth: 1.25)
            }
        }//Button
        .tint(Color.white)
    }
}
// MARK: PREVIEW
#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
}
