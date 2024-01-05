//
//  ProfileInfoRouter.swift
//  base-router
//
//  Created by dtrognn on 05/01/2024.
//

import SwiftUI

class ProfileInfoRouter: BaseRouter<ProfileInfoRouter.Screen> {
    enum Screen: IScreen {
        case editProfile
    }

    override func getInstanceScreen(_ screen: Screen) -> AnyView {
        switch screen {
        case .editProfile:
            return EditProfileView().environmentObject(self).asAnyView
        }
    }
}

struct ProfileInfoRouterView: View {
    @StateObject var router: ProfileInfoRouter

    var body: some View {
        ProfileInfoView().environmentObject(router)
    }
}
