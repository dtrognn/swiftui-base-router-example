//
//  HomeView.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI

struct HomeView: View {
    
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
            VStack {
                ForEach(1 ..< 10, id: \.self) { index in
                    Rectangle()
                }
            }.padding(AppStyle.layout.standardSpace)
                .cornerRadius(AppStyle.layout.standardCornerRadius)
        }
    }
}

#Preview {
    HomeView()
}
