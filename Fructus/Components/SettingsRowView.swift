//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 3/7/25.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linkeLabel: String? = nil
    var linkedDestination: String? = nil
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundStyle(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                }
                else if (linkeLabel != nil && linkedDestination != nil) {
                    Link(linkeLabel!, destination: URL(string: linkedDestination!)!)
                    Image(systemName: "arrow.up.right.square").foregroundStyle(.pink)
                    
                }else{
                    EmptyView()
                }
            }
        }
    }
}

#Preview("Hidden") {
    SettingsRowView(name: "App Version", content: "1.1.1")
}
#Preview("LinkedLabelRowview"){
    SettingsRowView(name: "Website", linkeLabel: "SwiftUI Masterclass", linkedDestination: "swiftuimasterclass.com")
}
