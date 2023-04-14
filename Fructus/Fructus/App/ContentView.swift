//
//  ContentView.swift
//  Fructus
//
//  Created by kakao on 2023/04/06.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruites: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruites.shuffled()) { item in
                    NavigationLink {
                        FruitDetailView(fruit: item)
                    } label: {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    }) //: BUTTON
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
            )
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
