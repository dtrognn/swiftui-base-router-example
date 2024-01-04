//
//  View+Ext.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI

extension View {
    var asAnyView: AnyView {
        return AnyView(self)
    }
    
    func hiddenTabBar(_ isHidden: Bool) -> some View {
        if isHidden {
            return modifier(HiddenTabBar()).asAnyView
        } else {
            return modifier(ShowTabBar()).asAnyView
        }
    }
}
