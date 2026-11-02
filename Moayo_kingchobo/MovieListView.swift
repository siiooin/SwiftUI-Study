//
//  MovieList.swift
//  Moayo_kingchobo
//
//  Created by sieon on 10/28/26.
//

import SwiftUI

struct MovieListView: View {
    @State private var viewModel = MovieInfoViewModel()
    
    var body: some View {
        NavigationStack {
        VStack {
            Text("Movie")
                .font(.head1)
                ScrollView {
                    ForEach(viewModel.listMovie) { movie in
                        ThumbnailRowView(movie: movie, viewModel: viewModel)
                    }
                }
            }
        }
    }
}

#Preview {
    MovieListView()
}
