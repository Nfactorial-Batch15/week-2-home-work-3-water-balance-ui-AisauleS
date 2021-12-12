//
//  Settings.swift
//  WaterBalance
//
//  Created by Aisaule Sibatova on 12.12.2021.
//

import SwiftUI

struct SettingsView: View {
    private var items: [String] = ["Daily Intake Level", "Your goal", "Reminder"]
    
    var body: some View {
        VStack {
            Text("EDIT")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 17, weight: .regular))
                .italic()
                .fontWeight(.black)
                .padding(16)
            
                List(items, id: \.self) { item in
                    VStack {
                        HStack {
                            Text(item)
                            Spacer()

                        }
                        .padding(13)
                        
                        Divider()
                            .foregroundColor(.gray)
                    }
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
