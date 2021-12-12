//
//  Screen5View.swift
//  WaterBalance
//
//  Created by Aisaule Sibatova on 12.12.2021.
//

import SwiftUI

struct Screen5View: View {
    var body: some View {
//        ZStack {
            VStack{
                Text("WATER BALANCE")
                    .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                    .font(.system(size: 17, weight: .regular))
                    .italic()
                    .fontWeight(.black)
                    
                Image("Item2")
                .padding(.top, 30)
                Text("Great job!")
                    .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top,20)
    
                Spacer()
                AddButtonView()
    }
            .padding(16)
}
    }


struct Screen5View_Previews: PreviewProvider {
    static var previews: some View {
        Screen5View()
    }
}
