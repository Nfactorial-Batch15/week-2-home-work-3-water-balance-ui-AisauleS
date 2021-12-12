//
//  Screen1View.swift
//  WaterBalance
//
//  Created by Aisaule Sibatova on 12.12.2021.
//

import SwiftUI

struct Screen1View: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Spacer()
            Text ("WATER BALANCE")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 24))
                .italic()
                .fontWeight(.black)
                .frame(maxWidth: .infinity)
            
            
            Text("What is your goal?")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.top,62)
         
            GoalView ()
                .padding(.top, 32)
          
            NextButtonView()
                .padding(.top, 116)
            
        }
        .padding([.leading, .trailing], 16)
    }
}

struct GoalView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
                
            
            VStack(alignment: .center, spacing: 14)
            {
                ChoiceGoalCustomView(title: "Goal number one", imageName: "Picker")
                ChoiceGoalCustomView(title: "Goal number two", imageName: "No")
                ChoiceGoalCustomView(title: "Goal number three", imageName: "No")
                ChoiceGoalCustomView(title: "Goal number four", imageName: "No")
            }
            .padding(.horizontal, 19)
            .padding(.vertical, 24)
    }
        .frame( height: 330)
    }
}
        
struct NextButtonView: View {
    var body: some View {
        Button {
            print("Next Button was pressed")
        } label: {
            ZStack{
                RoundedRectangle (cornerRadius: 16)
                    .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
                Text ("Next")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            .frame(height: 60)
        
        }
    }
}
        

struct ChoiceGoalCustomView: View {
    var title: String = ""
    var imageName: String = ""
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red:252/255, green: 253/255, blue: 255/255))
            HStack{
                Text(title)
                    .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                Spacer()
                Image(imageName)
            }
            .padding([.leading, .trailing], 24)
        }
    }}
        
        
        
        
struct Screen1View_Previews: PreviewProvider {
    static var previews: some View {
        Screen1View()
    }
}
