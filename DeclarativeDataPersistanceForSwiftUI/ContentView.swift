//
//  ContentView.swift
//  DeclarativeDataPersistanceForSwiftUI
//
//  Created by admin on 10/16/23.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text(isOn ? "Increment" : "Decrement")
            })
            .padding()
            
            Text("\(counter)")
                .font(.largeTitle)
                .padding()
            
            Button(isOn ? "Increment" : "Decrement") {
                if isOn {
                    counter += 1
                } else {
                    counter -= 1
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
