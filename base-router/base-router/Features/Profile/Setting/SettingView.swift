//
//  SettingView.swift
//  base-router
//
//  Created by dtrognn on 05/01/2024.
//

import SwiftUI

struct SettingView: View {
    private var screenConfiguration: ScreenConfiguration {
        return ScreenConfiguration(
            title: "Settings",
            showBackButton: true,
            showNavibar: true,
            hidesBottomBarWhenPushed: true
        )
    }
    
    var body: some View {
        ScreenContainerView(screenConfiguration) {
            VStack {
                Text("Setting View")
            }
        }
    }
}

#Preview {
    SettingView()
}
