//
//  Coordinator.swift
//  NavigationCoordinator
//
//  Created by Sanghyeon Park on 5/6/24.
//

import SwiftUI

class Coordinator: ObservableObject {
    
    enum ViewType: Hashable {
        case colorView(color: Color)
        case textView(text: String)
        
        func view() -> AnyView {
            switch self {
            case .colorView(let color):
                return AnyView(
                    ColorView(color: color)
                )
            case .textView(let text):
                return AnyView(
                    Text(text)
                )
            }
        }
    }
    
    init() {
        print("Coordinator init")
    }
    
    @Published var path: [ViewType] = []
    
    func push(_ view: ViewType) {
        path.append(view)
        print("\(#function) path: \(path)")
    }
    
    func popLast() {
        path.removeLast()
    }
    
    func pop(at: Int) {
        path.removeLast(at)
    }
    
    func popToRoot() {
        path.removeAll()
    }
    
    func pop(at: Int, push view: ViewType) {
        path.removeLast(at)
        path.append(view)
    }
}
