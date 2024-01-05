//
//  CommonButton.swift
//  base-router
//
//  Created by dtrognn on 05/01/2024.
//

import SwiftUI

struct CommonButtonView: View {
    var text: String
    var action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            buttonText
                .padding(.vertical, AppStyle.layout.standardSpace)
                .background(AppStyle.theme.btnEnableColor)
                .cornerRadius(AppStyle.layout.standardCornerRadius)
        }
    }
}

private extension CommonButtonView {
    var buttonText: some View {
        return Text(text)
            .font(AppStyle.font.medium16)
            .foregroundColor(AppStyle.theme.whiteTextColor)
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    CommonButtonView(text: "Login", action: {})
}
