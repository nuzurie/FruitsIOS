//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-05-03.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK:- PROPERTIES
    var labelText: String
    var labelImage: String
    
    
    // MARK:- BODY
    var body: some View {
        HStack{
            Text(labelText)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
