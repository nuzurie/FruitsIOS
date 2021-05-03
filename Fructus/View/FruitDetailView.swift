//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-05-02.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK:- PROPERTIES
    var fruit: Fruit
    @State private var isShowingCard: Bool = false
    // MARK:- BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                //image card
                FruitHeaderView(fruit: fruit)
            
                VStack(alignment: .leading, spacing: 20){
                    
                    //title
                    Text(fruit.title)
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    //heading
                    Text(fruit.headline)
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    //nutrition
                    FruitNutritionView(fruit: fruit)
                    
                    //subheadline
                    Text("LEARN MORE ABOUT \(fruit.title.uppercased())")
                        .foregroundColor(fruit.gradientColors[1])
                        .fontWeight(.bold)
                    
                    //description
                    Text(fruit.description)
                        .multilineTextAlignment(.leading)
                    
                    //footnote
                    SourceLinkView()
                        .padding(.top, 10)
                        .padding(.bottom, 40)
                    
                } //Vstack
                .padding(.horizontal, 16)
                .frame(maxWidth: 640, alignment: .center)
                
                
            } //VStack
            .navigationBarTitle(fruit.title, displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                isShowingCard = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isShowingCard, content: {
                SettingsView()
            })
//                navigationBarHidden(true)
            
        } // ScrollView
        .edgesIgnoringSafeArea(.top)

    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
