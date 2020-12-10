//
//  ContentView.swift
//  trafficLightSwiftUi
//
//  Created by Никита on 10.12.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                ColorCircles(color: .red)
                    .opacity(tapCount == 1 ? 1:0.3)
                ColorCircles(color: .yellow)
                    .opacity(tapCount == 2  ? 1:0.3)
                ColorCircles(color: .green)
                    .opacity(tapCount == 3 ? 1:0.3)
                    .padding(.top, 0.0)
                Spacer()
                
                Button(action: {
                    switch tapCount{
                    case 0:
                        tapCount += 1
                    case 1:
                        tapCount += 1
                    case 2:
                        tapCount += 1
                    default:
                        tapCount = 1
                    }
                    
                }, label: {
                    Text(tapCount == 0 ? "Start":"Next")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding(.all, 9.0)
                        .colorMultiply(.white)
                        .shadow(color: .black, radius: 10 )
                        .background(Color(.black))
                        .cornerRadius(10)
                })
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
