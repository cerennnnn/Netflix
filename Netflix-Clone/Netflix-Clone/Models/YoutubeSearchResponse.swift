//
//  YoutubeSearchResponse.swift
//  Netflix-Clone
//
//  Created by Ceren Güneş on 30.11.2023.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IDVideoElement
}

struct IDVideoElement: Codable {
    let kind: String
    let videoId: String
}
