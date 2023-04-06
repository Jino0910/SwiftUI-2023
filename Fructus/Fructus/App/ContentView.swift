//
//  ContentView.swift
//  Fructus
//
//  Created by kakao on 2023/04/06.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruites: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruites.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
    } //: NAVIGATION
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruites: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
