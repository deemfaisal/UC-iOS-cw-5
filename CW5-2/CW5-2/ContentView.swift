//
//  ContentView.swift
//  CW5-2
//
//  Created by Deem on 14/09/2022.
//

import SwiftUI




struct ContentView: View {
    
    @State var weightKG = ""
    
    @State var tallM = ""

    @State var bmi_result = ""

    
    var body: some View {
        
        ZStack {
            
            Color(.blue)
                .opacity(0.7)
                .ignoresSafeArea()
                .blur(radius: 50)
            
            
            VStack {
                
                Text("Body Mass Index")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
    
                
                
                TextField("Enter your weight in kg", text: $weightKG)
                    .font(.system(size: 20))
                    .frame(width: 300, height: 50, alignment: .center)
                    .background()
                    .cornerRadius(20)
                    .multilineTextAlignment(.center)
                    .padding()
                
                TextField("Enter your height in cm", text: $tallM)
                    .font(.system(size: 20))
                    .frame(width: 300, height: 50, alignment: .center)
                    .background()
                    .cornerRadius(20)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                
                Button (action: {
                    bmi_result = bmiC(weightKG: Double(weightKG) ?? 0.0, tallM: Double(tallM) ?? 0.0)
                    
                }) {
                    
                    Text("Count")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(.teal)
                        .cornerRadius(20)
                        .shadow(radius: 30)
                        .padding()
                    
                
                }
                
                Text(bmi_result)
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                    .background(Color(.white))
                    .padding()


                
                    
                
                
            }
            
            
        }
        
        
        
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import UIKit

func bmiC (weightKG: Double, tallM: Double) -> String
{
    
    let bmi = weightKG / (tallM * tallM)
    
    
    
//    switch bmi {
//
//    case 25...:
//        return ("Your BMI is \(bmi) so your weight is normal")
//    case 24..<20:
//        return ("Your BMI is \(bmi) so you are underweight")
//    case 26...:
//        return ("Your BMI is \(bmi) so you are overweight")
//
//    }
//
    if (bmi <= 25  && bmi >= 18.5)
    {
        return ("BMI = \(bmi) , so your weight is normal!")
    }
    if (bmi < 18.5 )
    {
        return ("BMI = \(bmi) , so you are underweight!")
    }
    else {
        return ("BMI = \(bmi) , so you are overweight!" )
    }

    
}
