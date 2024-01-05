//
//  ProfileView.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject private var router: ProfileRouter
    
    private var screenConfiguration: ScreenConfiguration {
        return ScreenConfiguration(
            title: "",
            showBackButton: false,
            showNavibar: false,
            hidesBottomBarWhenPushed: false
        )
    }

    var body: some View {
        ScreenContainerView(screenConfiguration) {
            ScrollView(showsIndicators: false) {
                VStack(spacing: AppStyle.layout.zero) {
                    VStack(spacing: AppStyle.layout.standardSpace) {
                        CommonRowView(leftImage: Image("ic_user"), title: "Personal information") {
                            router.push(to: .profileInfo)
                        }
                        
                        CommonRowView(leftImage: Image("ic_user"), title: "Setting") {
                            router.push(to: .setting)
                        }
                    }.padding(.horizontal, AppStyle.layout.standardSpace)
                }.padding(.vertical, AppStyle.layout.hugeSpace)
            }
        }
    }
}

#Preview {
    ProfileView()
}
