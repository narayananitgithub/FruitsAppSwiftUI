//
//  FruitsAppSwiftUIApp.swift
//  FruitsAppSwiftUI
//
//  Created by Narayanasamy on 29/08/23.
//

import SwiftUI

@main
struct FruitsAppSwiftUIApp: App {
    
// Appstorage is a property wrapper,its store the values of Userdefaults
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
          if isOnboarding {
            OnboardingView()
          } else {
            ContentView()
          }
        }
        }
    }
