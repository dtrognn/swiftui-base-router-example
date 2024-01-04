//
//  BaseRouter.swift
//  base-router
//
//  Created by dtrognn on 04/01/2024.
//

import Combine
import SwiftUI

public protocol IScreen {
    func identifier() -> String
}

public extension IScreen {
    func identifier() -> String {
        return UUID().uuidString
    }
}

open class BaseRouter<Screen: IScreen>: ObservableObject {
    public var cancellableSet: Set<AnyCancellable> = []
    public var navigationPath: DGNavigationPath

    public init() {
        self.navigationPath = DGNavigationPath()
        makeSubscription()
    }

    public init(navigationPath: DGNavigationPath) {
        self.navigationPath = navigationPath
        makeSubscription()
    }

    open func start() -> AnyView {
        fatalError("Need to implement func start()")
    }

    open func makeSubscription() {

    }

    open func getInstanceScreen(_ screen: Screen) -> AnyView {
        fatalError("Need to implement func getInstanceScreen()")
    }

    public func push(to screen: Screen, identifier: String? = nil) {
        navigationPath.push(getInstanceScreen(screen), withId: identifier ?? screen.identifier())
    }

    public func popToRootView() {
        navigationPath.pop(to: .root)
    }

    public func popView() {
        navigationPath.pop()
    }

    public func popToView(withId screenId: String) {
        navigationPath.pop(to: .view(withId: screenId))
    }

    public func present(_ screen: Screen) {
        navigationPath.present(getInstanceScreen(screen))
    }

    public func dismiss() {
        navigationPath.dismiss()
    }
}
