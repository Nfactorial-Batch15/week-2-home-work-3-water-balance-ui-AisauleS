//
//  Screen15View.swift
//  WaterBalance
//
//  Created by Aisaule Sibatova on 12.12.2021.
//

import SwiftUI

struct Screen15View: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Spacer()
            Text("REMINDER")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 17, weight: .regular))
                .italic()
                .fontWeight(.black)
            
            
            Text("Remind me each")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.top,132)
         
            TimesView ()
                .padding(.top, 32)
          
           SaveButtonView()
                .padding(.top, 116)
            
        }
        .padding([.leading, .trailing], 16)
    }
}

struct Screen15View_Previews: PreviewProvider {
    static var previews: some View {
        Screen15View()
    }
}
