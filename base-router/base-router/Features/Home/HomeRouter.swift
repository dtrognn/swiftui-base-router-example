//
//  HomeRouter.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI

class HomeRouter: BaseRouter<HomeRouter.Screen> {
    enum Screen: IScreen {}

    override func getInstanceScreen(_ screen: Screen) -> AnyView {}
}

struct HomeRouterView: View {
    @StateObject private var router = HomeRouter()

    var body: some View {
        DGNavigationStackView(navigationPath: router.navigationPath) {
            HomeView()
        }.environmentObject(router)
    }
}
