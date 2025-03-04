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
                            Text("Most of the fruits are low in calories so it is safe to consume them regularly.")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: SECTION 2
                    
                    //MARK: SECTION 3
                    
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
