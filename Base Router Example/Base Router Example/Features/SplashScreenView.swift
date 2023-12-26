//
//  SplashScreenView.swift
//  Base Router Example
//
//  Created by dtrognn on 26/12/2023.
//

import SwiftUI

struct SplashScreenView: View {
    @EnvironmentObject private var router: AppRouter
    
    var body: some View {
        ZStack {
            Color.gray
            
            VStack {
                Text("Splash Screen")
            }
        }.edgesIgnoringSafeArea(.all)
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    router.push(to: .mainTab)
                }
            }
    }
}

#Preview {
    SplashScreenView()
}
