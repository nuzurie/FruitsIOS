//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-05-02.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK:- PROPERTIES
    @State private var animated: Bool = false
        
    var fruit: Fruit
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 4, y: 6)
                .scaleEffect(animated ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.6)) {
                animated = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitData.first!)
    }
}
