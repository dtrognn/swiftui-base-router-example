//
//  HomeRouter.swift
//  Base Router Example
//
//  Created by dtrognn on 26/12/2023.
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
