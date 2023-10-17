//
//  AtBindable.swift
//  DeclarativeDataPersistanceForSwiftUI
//
//  Created by admin on 10/16/23.
//

import SwiftUI
import SwiftData

@Observable
class Light {
    var isOn: Bool = false
}

struct Room: View {
    @Bindable var light: Light
    
    var body: some View {
        Toggle(isOn: $light.isOn) {
            EmptyView()
        }.fixedSize()
    }
}

struct AtBindable: View {
    @State private var light: Light = Light()
    
    var body: some View {
        VStack {
            Room(light: light)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(light.isOn ? .yellow : .black)
    }
}

#Preview {
    AtBindable()
}
