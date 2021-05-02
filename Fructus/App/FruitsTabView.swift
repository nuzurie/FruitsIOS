//
//  FruitsTabView.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-05-02.
//

import SwiftUI

struct FruitsTabView: View {
    var body: some View {
        TabView{
            ForEach(1..<5) { item in
                ContentView()
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
