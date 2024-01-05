//
//  EditProfileView.swift
//  base-router
//
//  Created by dtrognn on 05/01/2024.
//

import SwiftUI

struct EditProfileView: View {
    @EnvironmentObject private var router: ProfileInfoRouter
    
    private var screenConfiguration: ScreenConfiguration {
        return ScreenConfiguration(
            title: "Edit profile",
            showBackButton: true,
            showNavibar: true,
            hidesBottomBarWhenPushed: true
        )
    }
    
    var body: some View {
        ScreenContainerView(screenConfiguration) {
            VStack {
                CommonButtonView(text: "Pop to root view") {
                    router.popToRootView()
                }
            }.padding(.all, AppStyle.layout.standardSpace)
        }
    }
}

#Preview {
    EditProfileView()
}
