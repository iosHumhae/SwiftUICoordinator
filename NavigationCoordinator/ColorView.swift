//
//  ColorView.swift
//  NavigationCoordinator
//
//  Created by Sanghyeon Park on 5/6/24.
//

import SwiftUI

struct ColorView: View {
    @EnvironmentObject private var coordinatorManager: CoordinatorManager
    
    let color: Color
    let colors: [Color] = [.red, .green, .blue, .yellow, .purple, .black]
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 30, height: 30)
                .foregroundStyle(color)
            
            Text("Selected Color: \(color)")
            
            Spacer()
        }
        .padding()
        
        List {
            Section("select color") {
                ForEach(colors, id: \.self) { colorItem in
                    if color != colorItem {
                        Button("\(colorItem)") {
                            coordinatorManager.colorTab.push(.colorView(color: colorItem))
                        }
                    }
                }
            }
            
            Section("navigation control") {
                Button("popLast()") {
                    coordinatorManager.colorTab.popLast()
                }
                
                Button("popLast At 2 Path") {
                    coordinatorManager.colorTab.pop(at: 2)
                }
                
                Button("popLast At 2 Path and Push TextView") {
                    coordinatorManager.colorTab.pop(at: 2, push: .textView(text: "Text View"))
                }
                
                Button("pop to root") {
                    coordinatorManager.colorTab.popToRoot()
                }
            }
        }
    }
}

#Preview {
    ColorView(color: .black)
        .environmentObject(CoordinatorManager())
}
