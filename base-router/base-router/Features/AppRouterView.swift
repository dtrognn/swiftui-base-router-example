//
//  AppRouterView.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI

class AppRouter: BaseRouter<AppRouter.Screen> {
    enum Screen: IScreen {}

    override func getInstanceScreen(_ screen: Screen) -> AnyView {}
}

struct AppRouterView: View {
    @StateObject var router: AppRouter = .init()

    init(router: AppRouter = .init()) {
        _router = StateObject(wrappedValue: router)
    }

    var body: some View {
        DGNavigationStackView(navigationPath: router.navigationPath) {
            ContentView()
        }.environmentObject(router)
    }
}
