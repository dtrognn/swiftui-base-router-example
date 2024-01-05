//
//  CommonRowView.swift
//  base-router
//
//  Created by dtrognn on 05/01/2024.
//

import SwiftUI

struct CommonRowView: View {
    var leftImage: Image
    var title: String
    var action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                Color.cyan.opacity(0.2)

                VStack {
                    HStack(spacing: AppStyle.layout.zero) {
                        HStack(alignment: .center, spacing: AppStyle.layout.mediumSpace) {
                            leftImageView
                            titleRow
                        }
                        Spacer()
                        arrowImage
                    }.padding(.all, AppStyle.layout.standardSpace)
                }.background(AppStyle.theme.rowCommonBackgroundColor)
                    .cornerRadius(AppStyle.layout.standardCornerRadius)
            }
        }
    }
}

private extension CommonRowView {
    var leftImageView: some View {
        return leftImage
            .resizable()
            .applyTheme()
            .frame(width: 16, height: 16)
    }

    var titleRow: some View {
        return Text(title)
            .foregroundColor(AppStyle.theme.textNormalColor)
            .font(AppStyle.font.regular16)
    }

    var arrowImage: some View {
        return Image("ic_arrow_right")
            .resizable()
            .applyTheme()
            .frame(width: 20, height: 20)
    }
}

#Preview {
    CommonRowView(leftImage: Image("ic_user"), title: "Personal infomation", action: {})
}
