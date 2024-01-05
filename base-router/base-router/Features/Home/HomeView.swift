//
//  HomeView.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var router: HomeRouter
    
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
            VStack(spacing: AppStyle.layout.zero) {
                CommonButtonView(text: "Next screen") {
                    router.push(to: .screen1)
                }
            }.padding(.bottom, AppStyle.layout.standardButtonHeight)
                .padding([.horizontal, .top], AppStyle.layout.standardSpace)
        }
    }
}

struct Screen1: View {
    @EnvironmentObject private var router: HomeRouter
    
    private var screenConfiguration: ScreenConfiguration {
        return ScreenConfiguration(
            title: "Screen 1",
            showBackButton: true,
            showNavibar: true,
            hidesBottomBarWhenPushed: true
        )
    }

    var body: some View {
        ScreenContainerView(screenConfiguration) {
            VStack(spacing: AppStyle.layout.zero) {
                CommonButtonView(text: "Screen 2") {
                    router.push(to: .screen2)
                }
            }.padding([.horizontal, .top], AppStyle.layout.standardSpace)
        }
    }
}

struct Screen2: View {
    @EnvironmentObject private var router: HomeRouter
    
    private var screenConfiguration: ScreenConfiguration {
        return ScreenConfiguration(
            title: "Screen 2",
            showBackButton: true,
            showNavibar: true,
            hidesBottomBarWhenPushed: true
        )
    }

    var body: some View {
        ScreenContainerView(screenConfiguration) {
            VStack(spacing: AppStyle.layout.zero) {
                CommonButtonView(text: "Pop to root view") {
                    router.popToRootView()
                }
            }.padding([.horizontal, .top], AppStyle.layout.standardSpace)
        }
    }
}

#Preview {
    HomeView()
}
