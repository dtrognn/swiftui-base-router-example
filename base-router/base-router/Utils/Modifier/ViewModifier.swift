//
//  ViewModifier.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI


struct HiddenModifier: ViewModifier {
    let isHidden: Bool

    func body(content: Content) -> some View {
        content.opacity(isHidden ? 0 : 1)
            .disabled(isHidden)
    }
}

struct ShowTabBar: ViewModifier {
    func body(content: Content) -> some View {
        return content.padding(.zero).onAppear {
            Tool.showTabBar()
        }
    }
}

struct HiddenTabBar: ViewModifier {
    func body(content: Content) -> some View {
        return content.padding(.zero)
            .onAppear {
            Tool.hiddenTabBar()
        }
    }
}
