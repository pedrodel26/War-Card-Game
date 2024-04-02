//
//  ContentView.swift
//  War Card Game
//
//  Created by Pedro Delmondes  on 02/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card4"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .padding(.bottom, 40)
                
                HStack {
                    Image(playerCard)
                        .padding(.trailing)
                    Image(cpuCard)
                        .padding(.leading)
                }

                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                
                
                HStack {
                    VStack(alignment: .center) {
                        Text("Player")
                            .padding()
                        
                        Text(String(playerScore))
                            .font(.title)
                            .bold()
                    }
                    
                    VStack(alignment: .center) {
                        Text("CPU")
                            .padding()
                        
                        Text(String(cpuScore))
                            .font(.title)
                            .bold()
                    }
                }
                .font(.title2)
                .foregroundStyle(.white)
                .padding(.top, 40)
                
            }
        }
    }
    
    func deal() {
        var playerCardValue = Int.random(in: 2...14)
        var cpuCardValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
