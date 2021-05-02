//
//  FructusApp.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-03-23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("onBoarding") var onBoarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if (onBoarding) {
                FruitsTabView()
            }
            else {
                ContentView()
            }
        }
    }
}
