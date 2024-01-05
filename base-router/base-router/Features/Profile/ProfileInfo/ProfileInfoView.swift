//
//  ProfileInfoView.swift
//  base-router
//
//  Created by dtrognn on 05/01/2024.
//

import SwiftUI

struct ProfileInfoView: View {
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
                
            }
        }
    }
}

#Preview {
    ProfileInfoView()
}
