//
//  Image+Ext.swift
//  base-router
//
//  Created by dtrognn on 05/01/2024.
//

import SwiftUI

public extension Image {
    func applyTheme(_ color: Color = AppStyle.theme.iconColor) -> some View {
        self.renderingMode(.template)
            .foregroundColor(color)
    }
}
