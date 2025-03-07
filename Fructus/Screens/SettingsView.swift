//
//  SettingsView.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 3/4/25.
//

import SwiftUI

struct SettingsView: View {
    //MARK: PROPERTIES
    @Environment(\.dismiss) var dismiss
    //MARK: BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (spacing: 20){
                    //MARK: SECTION 1
                    GroupBox(
                        label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                        
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center,spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .clipShape(RoundedRectangle(cornerRadius: 9))
                            Text(general)
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: SECTION 2
                    
                    //MARK: SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    
                    ){
                        
                        SettingsRowView(name: "Developer", content: "George")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 17")
                        SettingsRowView(name: "Website",linkeLabel: "SwiftUIMasterclass",linkedDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkeLabel: "@George",linkedDestination: "twitter.com/KyawTZinGeorge")
                        SettingsRowView(name: "SwiftUI",content: "2.0")
                        SettingsRowView(name: "App Version", content: "1.1.1")
                        
                    }
                    
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .toolbar(){
                    Button(action:{dismiss.callAsFunction()}) {
                        Image(systemName: "xmark")
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    SettingsView()
}
