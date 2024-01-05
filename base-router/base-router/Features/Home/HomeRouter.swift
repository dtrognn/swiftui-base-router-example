//
//  HomeRouter.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI

class HomeRouter: BaseRouter<HomeRouter.Screen> {
    enum Screen: IScreen {
        case screen1
        case screen2
    }

    override func getInstanceScreen(_ screen: Screen) -> AnyView {
        switch screen {
        case .screen1:
            Screen1().environmentObject(self).asAnyView
        case .screen2:
            Screen2().environmentObject(self).asAnyView
        }
    }
}

struct HomeRouterView: View {
    @StateObject private var router = HomeRouter()

    var body: some View {
        DGNavigationStackView(navigationPath: router.navigationPath) {
            HomeView()
        }.environmentObject(router)
    }
}
