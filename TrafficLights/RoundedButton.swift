//
//  ButtonView.swift
//  TrafficLights
//
//  Created by Nikita Batrakov on 20.01.2022.
//

import SwiftUI

struct RoundedButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .frame(width: 150)
            .foregroundColor(.white)
            .font(.title)
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 5)
            )
    }
}
