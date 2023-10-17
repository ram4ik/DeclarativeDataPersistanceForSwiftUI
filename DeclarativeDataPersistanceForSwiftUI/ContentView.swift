//
//  ContentView.swift
//  DeclarativeDataPersistanceForSwiftUI
//
//  Created by admin on 10/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            AtState()
                .tabItem {
                    Label("@State", systemImage: "swift")
                }
            
            AtBindable()
                .tabItem {
                    Label("@Bindable", systemImage: "swift")
                }
        }
    }
}

#Preview {
    ContentView()
}
