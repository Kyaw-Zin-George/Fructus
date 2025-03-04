//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 3/4/25.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText: String
    var labelImage: String
    var body: some View {
        HStack(spacing: 10) {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName:labelImage)
        }
        .padding()
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "chevron.right")
}
