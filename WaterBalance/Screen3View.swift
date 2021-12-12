//
//  Screen3View.swift
//  WaterBalance
//
//  Created by Aisaule Sibatova on 12.12.2021.
//

import SwiftUI

struct Screen3View: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Text ("WATER BALANCE")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 24))
                .italic()
                .fontWeight(.black)
                .frame(maxWidth: .infinity)
            
            
            Text("Daily intake?")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.top,62)
         
            Goal1View ()
                .padding(.top, 32)
          
           SaveButtonView()
                .padding(.top, 116)
            
        }
        .padding([.leading, .trailing], 16)
    }
}

struct Goal1View: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundColor(Color(red:252/255, green: 253/255, blue: 255/255))
                 
                        Text("2400")
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

struct SaveButtonView: View {
    var body: some View {
        Button {
            print("Next Button was pressed")
        } label: {
            ZStack{
                RoundedRectangle (cornerRadius: 16)
                    .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
                Text ("Save")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            .frame(height: 60)
        
        }
    }
}
        
struct Screen3View_Previews: PreviewProvider {
    static var previews: some View {
        Screen3View()
    }
}
