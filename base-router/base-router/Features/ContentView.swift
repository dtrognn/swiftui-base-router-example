//
//  ContentView.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.cyan.opacity(0.5)

            VStack {
                Text("Root View")
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
