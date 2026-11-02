//
//  ThumbnailView.swift
//  Moayo_kingchobo
//
//  Created by 전시언 on 10/11/26.
//

import SwiftUI

struct ThumbnailRowView: View {
    let movie: Movie
    let viewModel: MovieInfoViewModel
    
    var body: some View {
        NavigationLink {
            MovieInfoView(movie: movie, viewModel: viewModel)
        } label: {
            VStack {
                Image(movie.thumbnail)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .clipped()
            }
        }
    }
}

#Preview {
    let viewModel = MovieInfoViewModel()
    NavigationStack {
        ThumbnailRowView(movie: viewModel.listMovie[0], viewModel: viewModel)
    }
}
