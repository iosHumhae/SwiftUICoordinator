//
//  ContentView.swift
//  Coordinator
//
//  Created by Sanghyeon Park on 5/6/24.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        TabView {
            ColorIntroView()
                .tabItem {
                    Text("Color")
                }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(CoordinatorManager())
}
