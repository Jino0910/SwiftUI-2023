//
//  PageModel.swift
//  Pinch
//
//  Created by kakao on 2023/04/06.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
