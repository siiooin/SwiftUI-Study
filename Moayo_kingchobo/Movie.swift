//
//  Movie.swift
//  Moayo_kingchobo
//
//  Created by sieon on 10/28/26.
//

import Foundation

struct Movie : Identifiable{
    let id = UUID()
    let thumbnail: String
    let title: String
    let summary: String
    let director: String
    let ageRating: Int
    let releaseYear: Int
    let runningTime: String
    var isLiked = false
}
