//
//  AppRouterView.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI

class AppRouter: BaseRouter<AppRouter.Screen> {
    enum Screen: IScreen {
        case appLaunch
        case mainTab
    }

    @Published var screen: Screen = .appLaunch

    override init() {
        super.init()
        self.screen = .appLaunch
    }

    deinit {
        print("deinit:\(#file)")
    }

    private func updateScreen(isLogin: Bool) {
        if isLogin == true {
            self.screen = .mainTab
        }
        popToRootView()
    }

    override func getInstanceScreen(_ screen: Screen) -> AnyView {
        switch screen {
        case .appLaunch:
            return SplashScreenView().asAnyView
        case .mainTab:
            return TabbarRouterView().asAnyView
        }
    }
}

struct AppRouterView: View {
    @StateObject var router: AppRouter = .init()

    var body: some View {
        DGNavigationStackView(navigationPath: self.router.navigationPath) {
            self.router.getInstanceScreen(self.router.screen)
        }.environmentObject(self.router)
    }
}
