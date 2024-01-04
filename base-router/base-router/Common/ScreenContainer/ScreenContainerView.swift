//
//  ScreenContainerView.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI

public struct ScreenContainerView<Content: View>: View {
    @EnvironmentObject private var navigationStack: DGNavigationPath
    @ObservedObject public var screenConfiguration: ScreenConfiguration
    public var content: () -> Content

    public init(_ screenConfiguration: ScreenConfiguration,
                content: @escaping () -> Content)
    {
        self.screenConfiguration = screenConfiguration
        self.content = content
    }

    public var body: some View {
        bodyView
    }

    var bodyView: some View {
        return ZStack(alignment: .top) {
            AppStyle.theme.backgroundColor.ignoresSafeArea()
            VStack(spacing: AppStyle.layout.zero) {
                if screenConfiguration.showNavibar {
                    NaviBarView(screenConfiguration: screenConfiguration)
                }
                content()
                    .frame(minHeight: 0, maxHeight: .infinity)
                    .navigationBarHidden(true)
                    .hiddenTabBar(screenConfiguration.hidesBottomBarWhenPushed)
                    .onDisappear {
                        if screenConfiguration.hidesBottomBarWhenPushed == true {
                            screenConfiguration.hidesBottomBarWhenPushed = false
                        }
                    }
            }
        }.ignoresSafeArea(edges: .bottom)
    }
}
