//
//  CoordinatorApp.swift
//  Coordinator
//
//  Created by Sanghyeon Park on 5/6/24.
//

import SwiftUI

@main
struct CoordinatorApp: App {
    @StateObject private var coordinatorManager = CoordinatorManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(coordinatorManager)
        }
    }
}
