//
//  CoordinatorManager.swift
//  NavigationCoordinator
//
//  Created by Sanghyeon Park on 5/6/24.
//

import SwiftUI

class CoordinatorManager: ObservableObject {
    static let shared = CoordinatorManager()
    
    private init() {}
    
    @Published var colorTab = Coordinator()
//    @Published var textTab = Coordinator()
}
