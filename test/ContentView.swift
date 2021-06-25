//
//  ContentView.swift
//  test
//
//  Created by Luiz Carlos da Silva Araujo on 24/06/21.
//

import SwiftUI

struct ContentView: View {
    
//    class Person{
//        @State var name = ""
//        @State var card = "card5"
//        @State var score = 0
//    }
    
//    var player = Person()
//    var cpu = Person()
    
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var playerCard = "card4"
    @State var cpuCard = "card5"
    
    var body: some View {
        ZStack{
            
            Image("background").ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    
                    Spacer()
                    
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                Button {
                    //generate random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //update the scores
                    if playerRand > cpuRand{
                        playerScore += 1
                    } else if cpuRand > playerRand{
                        cpuScore += 1
                    }
                } label: {
                    Image("dealbutton")
                }

                
                Spacer()
                HStack{
                    
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                            .padding(.bottom, 10.0)
                            .foregroundColor(.white)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                            .padding(.bottom, 10.0)
                            .foregroundColor(.white)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                Spacer()
            }//vstack1
        }//zstack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
