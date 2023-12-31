//
//  ProfileInfoView.swift
//  base-router
//
//  Created by dtrognn on 05/01/2024.
//

import SwiftUI

struct ProfileInfoView: View {
    @EnvironmentObject private var router: ProfileInfoRouter
    
    private var screenConfiguration: ScreenConfiguration {
        return ScreenConfiguration(
            title: "ProfileInfo",
            showBackButton: true,
            showNavibar: true,
            hidesBottomBarWhenPushed: true
        )
    }
    
    var body: some View {
        ScreenContainerView(screenConfiguration) {
            VStack {
                CommonButtonView(text: "Edit profile") {
                    router.push(to: .editProfile)
                }
            }.padding(.all, AppStyle.layout.standardSpace)
        }
    }
}

#Preview {
    ProfileInfoView()
}
