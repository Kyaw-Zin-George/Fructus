//
//  FructusApp.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 2/21/25.
//

import SwiftUI

@main
struct FructusApp: App {
    //onboardingscreen to be visible when app is launched
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else{
                ContentView()
            }
        }
    }
}
