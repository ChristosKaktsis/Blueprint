//
//  ContentView.swift
//  Blueprint
//
//  Created by Christos Kaktsis on 1/10/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var router: Router
    var body: some View {
        VStack {
            Button("Page 1") {
                router.path.append(MainRoute.settings)
            }
        }
        .padding()
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Settings")
    }
}

#Preview {
    ContentView()
}
