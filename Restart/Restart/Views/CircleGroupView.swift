//
//  CircleGroupView.swift
//  Restart
//
//  Created by jinho on 2023/03/17.
//

import SwiftUI

struct CircleGroupView: View {
    // MARK: - PROPERTY
    
    @State var ShapreColor: Color
    @State var ShapreOpacity: Double
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapreColor.opacity(ShapreOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapreColor.opacity(ShapreOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: ZSTACK
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            
            CircleGroupView(ShapreColor: .white, ShapreOpacity: 0.2)
        }
    }
}
