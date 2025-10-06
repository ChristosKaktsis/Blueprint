//
//  Router.swift
//  Blueprint
//
//  Created by Christos Kaktsis on 2/10/25.
//

import SwiftUI

enum MainRoute: Hashable {
    case home
    case detail(id: String)
    case settings
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .home:
            Text("Home")
        case .detail(id: let id):
            Text("Detail \(id)")
        case .settings:
            SettingsView()
        }
    }
}

final class Router: ObservableObject {
    @Published var path = NavigationPath()
}
