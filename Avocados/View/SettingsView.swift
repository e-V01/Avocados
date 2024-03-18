//
//  SettingsView.swift
//  Avocados
//
//  Created by Y K on 01.03.2024.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundStyle(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                Section {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notifications")
                    }
                    Toggle(isOn: $backgroundRefresh, label: {
                        Text("Background refresh")
                    })
                } header: {
                    Text("General Settings")
                }
                
                Section {
                    if enableNotification {
                        HStack {
                            Text("Product")
                                .foregroundStyle(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        
                        HStack {
                            Text("Compatibility")
                                .foregroundStyle(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        
                        HStack {
                            Text("Dev")
                                .foregroundStyle(Color.gray)
                            Spacer()
                            Text("Yuriy")
                        }
                        
                        HStack {
                            Text("Designer")
                                .foregroundStyle(Color.gray)
                            Spacer()
                            Text("Petras")
                        }
                        
                        HStack {
                            Text("Website")
                                .foregroundStyle(Color.gray)
                            Spacer()
                            Text("MasterClass")
                        }
                        
                        HStack {
                            Text("Version")
                                .foregroundStyle(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message")
                                .foregroundStyle(Color.gray)
                            Spacer()
                            Text("🤘")
                        }
                    }
                    
                    
                    
                } header: {
                    Text("Application")
                }
                
                

            }
        }
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
