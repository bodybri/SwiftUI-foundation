//
//  ContentView.swift
//  war-card
//
//  Created by Bryan Huang on 10/29/22.
//

import SwiftUI

struct ContentView: View {

    @State var playerCard = "card2"
    @State var cpuCard =  "card3"

    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
            ZStack {                                            // provide depth to the UI make it front or back
                Image("background")
                    .ignoresSafeArea()                          // to fill out the back or make image full
                VStack {                                        // make object line up from up to down
                    Spacer()                                    // use to deal with different size of screen - split or divide object by half
                    Image("logo")
                    Spacer()
                    HStack {                                    // make object line up from left to right
                        Spacer()
                        Image(playerCard)
                        Spacer()
                        Image(cpuCard)
                        Spacer()
                    }
                    Spacer()
                    
                    Button {
                        deal()
                    } label: {
                        Image("dealbutton")
                    }

                    
                    Spacer()
                        HStack{
                            Spacer()
                            VStack {
                                Text("Player")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)              // make space for all direction
                                Text(String(playerScore))
                                    .font(.largeTitle)
                                    .foregroundColor(Color.white)
                            }
                            Spacer()
                            VStack {
                                Text("CPU")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                Text(String(cpuScore))
                                    .font(.largeTitle)
                                    .foregroundColor(Color.white)
                            }
                            Spacer()
                        }
                    Spacer()
                }
        }
    }
    
    func deal() {
        var playeCardValue = Int.random(in: 2...14)
        var cpuCardValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playeCardValue)
        cpuCard = "card" + String(cpuCardValue)
        
        if playeCardValue > cpuCardValue {
            playerScore+=1
        } else if playeCardValue < cpuCardValue {
            cpuScore+=1
        } else {
            print("equal")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
