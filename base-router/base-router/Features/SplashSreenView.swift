//
//  SplashSreenView.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI

struct SplashSreenView: View {
    var body: some View {
        ZStack {
            Color.cyan.opacity(0.3)

            VStack {
                Text("Splash screen")
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    SplashSreenView()
}
