//
//  FructusApp.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-03-23.
//

import SwiftUI

@main
struct FructusApp: App {
    @ObservedObject var b = boarding
    
    var body: some Scene {
        WindowGroup {
            if (b.isboarded) {
                FruitsTabView()
            }
            else {
                ContentView()
            }
        }
    }
}
