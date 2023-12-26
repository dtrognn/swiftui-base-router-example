//
//  ProfileRouter.swift
//  Base Router Example
//
//  Created by dtrognn on 26/12/2023.
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
