//
//  Screen8View.swift
//  WaterBalance
//
//  Created by Aisaule Sibatova on 12.12.2021.
//

import SwiftUI

struct Screen8View: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
//            Spacer()
            Text("WATER")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 17, weight: .regular))
                .italic()
                .fontWeight(.black)
            
            
            Text("Water intake")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.top,132)
         
            Results2View ()
                .padding(.top, 32)
          
           AddButtonView()
                .padding(.top, 316)
            
        }
        .padding([.leading, .trailing], 16)
    }
}

struct Results2View: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundColor(Color(red:252/255, green: 253/255, blue: 255/255))
                 
                        Text("200")
                            .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
                            .font(.system(size: 16))
                            .fontWeight(.regular)
                }
              
                Text("ML")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
            }
            
            
            .padding(.horizontal, 19)
            .padding(.vertical, 24)
    }
        .frame( height: 108)
    }
}


        
struct Screen8View_Previews: PreviewProvider {
    static var previews: some View {
        Screen8View()
    }
}

