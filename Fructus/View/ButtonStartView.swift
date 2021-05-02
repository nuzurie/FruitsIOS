//
//  ButtonStartView.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-05-02.
//

import SwiftUI

struct ButtonStartView: View {
    var body: some View {
        
        // MARK: PROPERTIES
        
        // MARK: BODY
        Button (action: {
                    print("hi")
            
        }){
            Text("Start")
            
            Image(systemName: "arrow.right.circle")
                .imageScale(.large)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
            Capsule().strokeBorder(Color.white, lineWidth: 1.25)
        )
        .accentColor(.white)
    }
}


// MARK: PREVIEW
struct ButtonStartView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStartView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
