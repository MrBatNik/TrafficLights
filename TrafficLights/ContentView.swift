//
//  ContentView.swift
//  TrafficLights
//
//  Created by Nikita Batrakov on 19.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonTitle = "START"
    @State private var redLight = CircleView(color: .red, opacity: 0.3)
    @State private var yellowLight = CircleView(color: .yellow, opacity: 0.3)
    @State private var greenLight = CircleView(color: .green, opacity: 0.3)
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                redLight
                yellowLight
                greenLight
                Spacer()
                Button {
                    buttonTitle = "NEXT"
                    if redLight.opacity == 1 {
                        redLight.opacity = 0.3
                        yellowLight.opacity = 1
                    } else if yellowLight.opacity == 1 {
                        yellowLight.opacity = 0.3
                        greenLight.opacity = 1
                    } else {
                        greenLight.opacity = 0.3
                        redLight.opacity = 1
                    }
                } label: {
                    Text(buttonTitle)
                }
                    .buttonStyle(RoundedButton())
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
