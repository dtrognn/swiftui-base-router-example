//
//  ProfileRouter.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI

class ProfileRouter: BaseRouter<ProfileRouter.Screen> {
    enum Screen: IScreen {}

    override func getInstanceScreen(_ screen: Screen) -> AnyView {}
}

struct ProfileRouterView: View {
    @StateObject private var router = ProfileRouter()

    var body: some View {
        DGNavigationStackView(navigationPath: router.navigationPath) {
            ProfileView()
        }.environmentObject(router)
    }
}
