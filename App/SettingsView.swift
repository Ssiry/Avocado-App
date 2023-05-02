//
//  SettingsView.swift
//  Avocado
//
//  Created by Hassan Assiry on 30/04/2023.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTY
    @State private var ShowNotification:Bool = true
    @State private var backgroundRefresh:Bool = false

    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center,spacing: 5) {
            // MARK: - Header
            VStack(alignment: .center,spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.25),radius: 8,x: 0,y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title,design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form{
             // MARK: - Section: 1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $ShowNotification){
                        Text("Enable Notifiacation")
                    }
                    
                    Toggle(isOn: $backgroundRefresh){
                        Text("background Refresh")
                    }

                }
                
                
                
                
             // MARK: - Section: 2
                Section(header: Text("Application")) {
                    if ShowNotification{
                        HStack{
                            Text("Product").foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        
                        HStack{
                            Text("Compatibility").foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        
                        HStack{
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("Hassan Asery")
                        }
                        
                        HStack{
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Ahmed ATA")
                        }
                        
                        HStack{
                            Text("Website").foregroundColor(.gray)
                            Spacer()
                            Text("codesquadpro.com")
                        }
                        
                        HStack{
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    }else{
                        HStack{
                            Text("Personal message").foregroundColor(.gray)
                            Spacer()
                            Text("👍 Happy Coding!")
                        }
                    }
                }
                
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
