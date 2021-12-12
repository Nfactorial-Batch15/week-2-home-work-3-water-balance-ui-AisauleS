//
//  Screen2View.swift
//  WaterBalance
//
//  Created by Aisaule Sibatova on 12.12.2021.
//

import SwiftUI

struct Screen2View: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Spacer()
            Text ("WATER BALANCE")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 24))
                .italic()
                .fontWeight(.black)
                .frame(maxWidth: .infinity)
            
            
            Text("Remind me each")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.top,62)
         
            TimesView ()
                .padding(.top, 32)
          
           NextButtonView()
                .padding(.top, 116)
            
        }
        .padding([.leading, .trailing], 16)
    }
}

struct TimesView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
            VStack{
            HStack{
                ChoiceTimeView(title: "15 minutes")
                    ChoiceTimeView(title: "30 minutes")
            }
                
            HStack{
                ChoiceTimeView(title: "45 minutes")
                    ChoiceTimeView(title: "1 hour")
            }
            HStack{
                ChoiceTimeView(title: "1,5 hours")
                    ChoiceTimeView(title: "2 hours")
            }
            HStack{
                ChoiceTimeView(title: "3 hours")
                    ChoiceTimeView(title: "4 hours")
            }
            }
            .padding(.horizontal, 19)
            .padding(.vertical, 24)
    }
        .frame( height: 330)
    }
}
        

        

struct ChoiceTimeView: View {
    var title: String = ""


    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red:252/255, green: 253/255, blue: 255/255))
         
                Text(title)
                    .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
            }
        }
}
  
        
struct Screen2View_Previews: PreviewProvider {
    static var previews: some View {
        Screen2View()
    }
}
