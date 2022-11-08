//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by 정주호 on 08/11/2022.
//

import Foundation


struct YoutubeSearchReponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
