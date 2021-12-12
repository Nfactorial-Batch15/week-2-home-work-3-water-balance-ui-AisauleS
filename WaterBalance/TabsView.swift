//
//  ContentView.swift
//  WaterBalance
//
//  Created by Aisaule Sibatova on 12.12.2021.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            Screen4View() // you may select here also Sreen5View
                .tabItem { Label("Main", systemImage: "house") }
             
            SettingsView()
            
                .tabItem { Label("Settings", systemImage: "slider.horizontal.3") }
            
            History()
                .tabItem { Label("History", systemImage: "doc") }
        }
        .accentColor(.white)
        .edgesIgnoringSafeArea(.all
        )
        }
       

    }


extension UITabBarController {
    override open func viewDidLoad() {
        let standardAppearance = UITabBarAppearance()
        tabBar.standardAppearance = standardAppearance

        standardAppearance.configureWithTransparentBackground()
    }
}


struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
