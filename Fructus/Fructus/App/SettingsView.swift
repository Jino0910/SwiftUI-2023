//
//  SettingsView.swift
//  Fructus
//
//  Created by jinho on 2023/04/07.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories, None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    } //: BOX
                     
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingRowView(name: "Developer", content: "John / Jane")
                        SettingRowView(name: "Designer", content: "Robert Petras")
                        SettingRowView(name: "Compatibility", content: "iOS 14")
                        SettingRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingRowView(name: "SwiftUI", content: "2.0")
                        SettingRowView(name: "Version", content: "1.1.0")
                    } //: BOX
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                )
                .padding()
            }
        }
    }
}

// MARK: - PREVIEW
struct SettingsViewPreviews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
