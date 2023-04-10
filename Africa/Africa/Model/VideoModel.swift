//
//  VideoModel.swift
//  Africa
//
//  Created by kakao on 2023/04/10.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
}

extension Video {
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
