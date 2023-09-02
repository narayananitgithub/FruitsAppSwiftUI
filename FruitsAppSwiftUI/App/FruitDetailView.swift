//
//  FruitDetailView.swift
//  FruitsAppSwiftUI
//
//  Created by Narayanasamy on 31/08/23.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment:.leading, spacing: 20) {
                        //TITTLE
                        Text(fruit.tittle)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gardientColors[1])
                        
                        // HEADELINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        //SUBHEADLINE
                        Text("Learn More about \(fruit.tittle)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gardientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    }//VSTACK
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                }// : VSTACK
                .navigationBarTitle(fruit.tittle,displayMode: .inline)
                .navigationBarHidden(true)
            }//:SCROLL
            .edgesIgnoringSafeArea(.top)
        }//NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

        struct FruitDetailView_Previews: PreviewProvider {
            static var previews: some View {
                FruitDetailView(fruit: fruitData[0])
                    .previewDevice("iphone 11 pro")
            }
        }
 
