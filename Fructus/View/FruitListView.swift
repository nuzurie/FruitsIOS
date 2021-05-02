//
//  FruitListView.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-05-02.
//

import SwiftUI

struct FruitListView: View {
    var fruit: Fruit
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 10, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5){
                Text(fruit.title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            } // VStack
        }// HStack
    }
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(fruit: fruitData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
