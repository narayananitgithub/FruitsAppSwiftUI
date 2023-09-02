//
//  OnboardingView.swift
//  FruitsAppSwiftUI
//
//  Created by Narayanasamy on 30/08/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
var fruits: [Fruit] = fruitData
    
   // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }// LOOP
            
        }// TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
        
    }
}

// MARK: - PREVIREW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
            .previewDevice("Iphone 11 pro")
    }
}
