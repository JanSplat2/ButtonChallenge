//
//  ContentView.swift
//  ButtonChallenge
//
//  Created by Dittrich, Jan - Student on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    @State private var Summarize = 0
    @State private var BlueButton = 0
    @State private var BlueButtonPressed = false
    @State private var RedButton = 0
    @State private var RedButtonPressed = false
    @State private var GreenButton = 0
    @State private var GreenButtonPressed = false
    @State private var UserName = ""
    var body: some View {
        VStack {
            Text("Hello, \(UserName)!")
                .font(.system(size: 40, weight: .bold, design: .rounded))
                .frame(width: 360, height: 60)
            Text("\(Summarize)")
                .font(.system(size: 180, weight: .bold, design: .rounded))
            TextField("Enter Name", text:  $UserName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.headline)
                .padding()
            HStack {
                Button {
                    BlueButton += 1
                    Summarize += 1
                    BlueButtonPressed.toggle()
                } label: {
                    Circle()
                        .foregroundStyle(.blue)
                        .overlay {
                            Text("\(BlueButton)")
                                .font(.system(size: 72, weight: .bold, design: .rounded))
                                .foregroundStyle(.white)
                        }
                }
                Button {
                    GreenButton += 2
                    Summarize += 2
                    RedButtonPressed.toggle()
                }label: {
                    Circle()
                        .foregroundStyle(.green)
                        .overlay {
                            Text("\(GreenButton)")
                                .font(.system(size: 72, weight: .bold, design: .rounded))
                                .foregroundStyle(.white)
                        }
                }

                Button {
                    RedButton += 3
                    Summarize += 3
                    GreenButtonPressed.toggle()
                }label: {
                    Circle()
                        .foregroundStyle(.red)
                        .overlay {
                            Text("\(RedButton)")
                                .font(.system(size: 72, weight: .bold, design: .rounded))
                                .foregroundStyle(.white)
                        }
                }
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
