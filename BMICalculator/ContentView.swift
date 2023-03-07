//
//  ContentView.swift
//  BMICalculator
//
//  Created by David Cormell on 23/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var weight: String = ""
    @State private var height: String = ""
    @State private var bmi = BMICalculations()
    @State private var bmi_output: Double = 0.0
    @State private var health: String = ""
    var body: some View {
        List {
            Image("PublicHealth")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            TextField(
                "Height",
                text: $height
            )
            
            TextField(
                "Weight",
                text: $weight
            )
            
            Button("Calculate", action: {
                if let height = Double(height) {
                    if let weight = Double(weight) {
                        bmi_output = bmi.calculateBmi(weight: weight, height: height)
                    } else {
                        print("Invalid")
                    }
                }
                else {
                    print("Invalid")
                }
                
                health = bmi.lookUpBmiClassification(bmi: bmi_output)
            })
            
            Text("Your BMI is: \(bmi_output.rounded(toPlaces: 1))")
            Text("You are: \(health)")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
