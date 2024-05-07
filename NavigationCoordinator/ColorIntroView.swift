//
//  ColorIntroView.swift
//  NavigationCoordinator
//
//  Created by Sanghyeon Park on 5/6/24.
//

import SwiftUI

struct ColorIntroView: View {
    @StateObject private var coordinatorManager = CoordinatorManager.shared

    let colors: [Color] = [.red, .green, .blue, .yellow, .purple, .black]
    
    var body: some View {
        NavigationStack(path: $coordinatorManager.colorTab.path) {
            List(colors, id: \.self) { color in
                Button("\(color)") {
                    coordinatorManager.colorTab.push(.colorView(color: color))
                }
            }
            .navigationDestination(for: Coordinator.ViewType.self) { view in
                view.view()
            }
            .navigationTitle("Select a color")
            .navigationBarTitleDisplayMode(.inline)
            .onChange(of: coordinatorManager.colorTab.path) { oldValue, newValue in
                print("바뀌었다고... 트리거 했다고...")
            }
        }
    }
}

#Preview {
    ColorIntroView()
}
