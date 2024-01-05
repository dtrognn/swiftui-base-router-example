//
//  ProfileInfoRouter.swift
//  base-router
//
//  Created by dtrognn on 05/01/2024.
//

import SwiftUI

class ProfileInfoRouter: BaseRouter<ProfileInfoRouter.Screen> {
    enum Screen: IScreen {}

    override func getInstanceScreen(_ screen: Screen) -> AnyView {}
}

struct ProfileInfoRouterView: View {
    @StateObject var router: ProfileInfoRouter

    var body: some View {
        ProfileInfoView().environmentObject(router)
    }
}
