//
//  ContentView.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-03-23.
//



import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitData
    
    // MARK:- BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)){
                    FruitListView(fruit: item)
                    }
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
