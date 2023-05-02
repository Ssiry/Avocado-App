//
//  AvocadoApp.swift
//  Avocado
//
//  Created by Hassan Assiry on 30/04/2023.
//

import SwiftUI

@main
struct AvocadoApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                AvocadoView()
                    .tabItem {
                        Image("tabicon-branch")
                        Text("Avocados")
                    }
                ContentView()
                    .tabItem {
                        Image("tabicon-book")
                        Text("Recipes")
                    }
                RipeningStagesView()
                    .tabItem {
                        Image("tabicon-avocado")
                        Text("Ripening")
                    }
                
                SettingsView()
                    .tabItem {
                        Image("tabicon-settings")
                        Text("Settings")
                    }

            }
        }
    }
}
