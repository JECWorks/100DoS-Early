//
//  ContentView.swift
//  100DoS Early
//
//  Created by Jason Cox on 6/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedScore: Int = 0
    @State private var result: Int = 0

    var body: some View {
        VStack {
            Spacer()

            Menu {
                Button(action: { calculateResult(score: 1) }) {
                    Text("Score 1")
                }
                Button(action: { calculateResult(score: 2) }) {
                    Text("Score 2")
                }
                Button(action: { calculateResult(score: 3) }) {
                    Text("Score 3")
                }
                Button(action: { calculateResult(score: 4) }) {
                    Text("Score 4")
                }
            } label: {
                Label("Choose a Score", systemImage: "list.bullet")
                    .font(.title)
                    .padding()
                    .frame(width: 200) // Set the width of the button
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Spacer()

            Text("Selected Score: \(selectedScore)")
                .font(.title)
                .padding()

            Text("Result: \(result)")
                .font(.title)
                .padding()
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    func calculateResult(score: Int) {
        selectedScore = score
        // Simple calculation example: multiply score by 10
        result = score * 10
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
