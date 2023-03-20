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
    @State private var isAnimation: Bool = false
    
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
        .blur(radius: isAnimation ? 0 : 10)
        .opacity(isAnimation ? 1 : 0)
        .scaleEffect(isAnimation ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimation)
        .onAppear {
            isAnimation = true
        }
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
