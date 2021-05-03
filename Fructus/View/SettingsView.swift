//
//  SettingsView.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-05-03.
//

import SwiftUI

struct SettingsView: View {
    // MARK:- PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK:- BODY
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15) {
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider()
                            .padding(.vertical, 5   )
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ")
                                .font(.caption)
                        } //HStack
                    }
                    
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                        SettingsRowView(name: "Developer", content: "Zubair Nurie")
                        SettingsRowView(name: "Website", linkLabel: "Apple", linkDestination: "www.apple.ca")
                        SettingsRowView(name: "GitHub", linkLabel: "Nuzurie", linkDestination: "www.github.com/nuzurie")
                        SettingsRowView(name: "LinkedIn", linkLabel: "LinkedIn", linkDestination: "www.linkedin.com/in/zubair-nurie")
                    }
                    
                } //VStack
                .navigationBarTitle(Text("Settings"), displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
                .padding()
            }// ScrollView
        }// NavigationView
        
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
