//
//  RootContainer.swift
//  Blueprint
//
//  Created by Christos Kaktsis on 2/10/25.
//

import SwiftUI

struct RootContainer: View {
    
    @StateObject var router = Router()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            ContentView()
                .navigationDestination(for: MainRoute.self) { route in
                    route.destiantion
                }
        }.environmentObject(router)
    }
}
