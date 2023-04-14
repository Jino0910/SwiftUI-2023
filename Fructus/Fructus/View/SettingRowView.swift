//
//  SettingRowView.swift
//  Fructus
//
//  Created by jinho on 2023/04/07.
//

import SwiftUI

struct SettingRowView: View {
    // MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if let content = content {
                    Text(content)
                } else if let linkLabel = linkLabel,
                          let linkDestination = linkDestination,
                          let url = URL(string: "https://\(linkDestination)"){
                    Link(linkLabel, destination: url)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct SettingRowViewPreviews: PreviewProvider {
    static var previews: some View {
        SettingRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        
        SettingRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
