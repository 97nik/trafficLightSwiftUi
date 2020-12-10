//
//  ColorCircles.swift
//  trafficLightSwiftUi
//
//  Created by Никита on 10.12.2020.
//

import SwiftUI



struct ColorCircles: View {
    let color: UIColor

    var body: some View {
        
       
            Color(color)
                .frame(width: 100, height: 100)
            .clipShape(Circle())
            .shadow(radius: 10)
           // .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            
                
        
    }
}

struct ColorCircles_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircles(color: .red)
    }
}
