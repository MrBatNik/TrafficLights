//
//  ContentView.swift
//  TrafficLights
//
//  Created by Nikita Batrakov on 19.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonTitle = "START"
    @State private var viewSetups: [String: Double] = [
        "red": 0.3,
        "yellow": 0.3,
        "green": 0.3
    ]
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                CircleView(color: .red, opacity: viewSetups["red"] ?? 0)
                CircleView(color: .yellow, opacity: viewSetups["yellow"] ?? 0)
                CircleView(color: .green, opacity: viewSetups["green"] ?? 0)
                Spacer()
                Button(action: tapButton) {
                    Text(buttonTitle)
                }
                    .buttonStyle(RoundedButtonStyle())
            }
            .padding()
        }
    }
    
    private func tapButton() {
        buttonTitle = "NEXT"
        if viewSetups["red"] == 1 {
            viewSetups["red"] = 0.3
            viewSetups["yellow"] = 1
        } else if viewSetups["yellow"] == 1 {
            viewSetups["yellow"] = 0.3
            viewSetups["green"] = 1
        } else {
            viewSetups["green"] = 0.3
            viewSetups["red"] = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
