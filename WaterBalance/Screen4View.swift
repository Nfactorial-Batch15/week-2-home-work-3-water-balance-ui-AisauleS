//
//  MainScreen1View.swift
//  WaterBalance
//
//  Created by Aisaule Sibatova on 12.12.2021.
//

import SwiftUI

struct Screen4View: View {
    var body: some View {
//        ZStack {
            VStack{
                Text("WATER BALANCE")
                    .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                    .font(.system(size: 17, weight: .regular))
                    .italic()
                    .fontWeight(.black)
                    
                Image("Item")
                .padding(.top, 30)
                
                
                
                Text("Add your first drink for today")
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

struct AddButtonView: View {
    var body: some View {
        Button {
            print("Next Button was pressed")
        } label: {
            ZStack{
                RoundedRectangle (cornerRadius: 16)
                    .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
                Text ("Add")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            .frame(height: 60)
        
        }
    }
}

struct Screen4View_Previews: PreviewProvider {
    static var previews: some View {
        Screen4View()
    }
}
