//
//  SplashSreenView.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI

struct SplashScreenView: View {
    @EnvironmentObject private var router: AppRouter
    
    var body: some View {
        ZStack {
            Color.cyan.opacity(0.3)

            VStack {
                Text("Splash screen")
            }
        }.ignoresSafeArea()
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    router.push(to: .mainTab)
                }
            }
    }
}

#Preview {
    SplashScreenView()
}
