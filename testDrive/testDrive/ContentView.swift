//
//  ContentView.swift
//  testDrive
//
//  Created by Luiz Carlos da Silva Araujo on 23/06/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack{
            
            Form {
                
                Section {
                    
                    HStack {
                        Image(systemName: "airplane")
                        Text("Airplane Mode")
                        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Label")/*@END_MENU_TOKEN@*/
                        }
                    }
                    
                    HStack {
                        Image(systemName: "wifi")
                        Text("Wi-Fi")
                        Spacer()
                        Text("Uai-fai")
                            .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                        Text(">")
                            .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        Image(systemName: "bluetooth")
                        Text("Bluetooth")
                        Spacer()
                        Text("On")
                            .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                        Text(">")
                            .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        Image(systemName: "cellular")
                        Text("Cellular")
                        Spacer()
                        Text(">")
                            .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        Image(systemName: "personal")
                        Text("Personal")
                        Spacer()
                        Text("Off")
                            .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                        Text(">")
                            .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                    }
                }   //fim section 1
                
                Section {
                    
                    HStack {
                        Image(systemName: "folder.fill.badge.plus")
                        
                        Text("Notifications")
                        Spacer()
                        Text(">")
                            .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        Image(systemName: "speaker.3.fill")
                        Text("Sound & Haptic")
                        Spacer()
                        Text(">")
                            .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                    }
                    
                }   //fim section 2
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
