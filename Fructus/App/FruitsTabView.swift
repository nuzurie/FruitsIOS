//
//  FruitsTabView.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-05-02.
//

import SwiftUI

struct FruitsTabView: View {
    
    // MARK:- PROPERTIES
    var fruits: [Fruit] = fruitData
    
    // MARK:- BODY
    var body: some View {
        
        TabView{
            ForEach(fruits[1...5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(10)
    }
}

struct FruitsTabView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsTabView()
    }
}
