//
//  History.swift
//  WaterBalance
//
//  Created by Aisaule Sibatova on 12.12.2021.
//

import SwiftUI

struct History: View {
    var body: some View {
            HistoryTab()
    }
}


struct HistoryTab: View {
    @State var ml = ""
    var body: some View {
            VStack {
                Text("TODAY")
                    .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                    .font(.system(size: 17, weight: .regular))
                    .italic()
                    .fontWeight(.black)
                    .padding(16)
                VStack {
                                    HStack{
                                        Text("250 ml")
                                        Spacer()
                                        Text("12:13").foregroundColor(.gray)
                                    }
                                    
                                    .padding()
                                    Divider()
                                    HStack{
                                        Text("200 ml")
                                        Spacer()
                                        Text("14:10").foregroundColor(.gray)
                                    }.padding()
                                    Divider()
                                    HStack{
                                        Text("50 ml")
                                        Spacer()
                                        Text("15:13").foregroundColor(.gray)
                                    }.padding()
                                    Divider()
                                    HStack{
                                        Text("300 ml")
                                        Spacer()
                                        Text("19:10").foregroundColor(.gray)
                                    }.padding()
                                    Divider()
                                    Spacer()
                }
            }
    }
}



struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
