//
//  AtEnvironment.swift
//  DeclarativeDataPersistanceForSwiftUI
//
//  Created by admin on 10/16/23.
//

import SwiftUI

struct LightView: View {
    @Bindable var light: Light
    
    var body: some View {
        Toggle(isOn: $light.isOn, label: {
            EmptyView()
        })
        .fixedSize()
    }
}

struct Room2: View {
    @Environment(Light.self) private var light
    
    var body: some View {
        LightView(light: light)
    }
}

struct AtEnvironment: View {
    @Environment(Light.self) private var light
    
    var body: some View {
        Room2()
    }
}

#Preview {
    AtEnvironment()
        .environment(Light())
}
