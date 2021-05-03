//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-05-03.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK:- PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK:- BODY
    var body: some View {
        Divider()
            .padding(.vertical, 5)
        
        HStack{
            Text(name)
                .foregroundColor(.gray)
            Spacer()
            if content != nil {
                Text(content!)
            } else if linkLabel != nil && linkDestination != nil {
                Link(destination: URL(string: "https://\(linkDestination!)")!, label: {
                    Text(linkLabel!)
                })
                Image(systemName: "arrow.up.right.square")
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Zubair Nurie")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 420, height: 100))
            .padding()
        SettingsRowView(name: "Website", linkLabel: "Apple", linkDestination: "www.apple.ca")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 420, height: 100))
            .padding()
    }
}
