//
//  MovieInfoViewModel.swift
//  Moayo_kingchobo
//
//  Created by sieon on 10/28/26.
//

import Foundation
import Observation

@Observable
final class MovieInfoViewModel {
    private(set) var listMovie: [Movie] = [
        Movie(thumbnail: "ForrestGump", title: "Forrest Gump", summary: "순수함의 대명사 '포레스트 검프'가 우연과 노력으로 현대 미국의 삶을 살아가는 이야기", director: "Robert Zemeckis", ageRating: 12, releaseYear: 1994, runningTime: "142분"),
        Movie(thumbnail: "Flipped", title: "Flipped", summary: "소년과 소녀의 순수한 사랑 이야기", director: "Rob Reiner", ageRating: 12, releaseYear: 2010, runningTime: "90분"),
        Movie(thumbnail: "Obsession", title: "Obsession", summary: "사랑해 줄게. 죽을 때까지", director: "Curry Barker", ageRating: 19, releaseYear: 2026, runningTime: "109분")
    ]
    
    func toggleLike(id: Movie.ID) {
        guard let index = listMovie.firstIndex(where: { $0.id == id }) else {
            return
        }
        
        listMovie[index].isLiked.toggle()
    }
}
