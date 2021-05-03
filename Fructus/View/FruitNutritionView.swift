//
//  FruitNutritionvIEW.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-05-02.
//

import SwiftUI

struct FruitNutritionView: View {
    // MARK:- PROPERTIES
    var fruit: Fruit
    var nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamin", "Minerals"]
    
    // MARK:- BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutrition value per 100g"){
                
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider()
                        .padding(.top, 5)
                    HStack {
                        
                        HStack {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())

                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutritionView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionView(fruit: fruitData.first!)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 400, height: 400))
    }
}
