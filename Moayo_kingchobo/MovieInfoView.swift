//
//  MovieInfoView.swift
//  Moayo_kingchobo
//
//  Created by 전시언 on 10/11/26.
//

import SwiftUI

struct MovieInfoView: View {
    @State private var review: String = ""
    @State private var rating: Int = 0
    @State private var checked = false
    @State private var showAgeInfo = false
    
    let movie: Movie
    let viewModel: MovieInfoViewModel
    
    private var ageInfoText: String {
        switch movie.ageRating {
        case 12:
            return "만 \(movie.ageRating)세 미만은 보호자 동반 시 관람할 수 있어요"
            
        default:
            return "\(movie.ageRating)세 이상만 관람 가능합니다!"
        }
    }
    
    var body: some View {
        ScrollView {
            VStack{
                HStack{
                    HStack(spacing: 0){
                        Text("이미 보셨나요?")
                            .font(.subhead1)
                            .padding()
                        CheckView(isChecked: $checked)
                        Spacer()
                        
                        
                        Text("즐겨찾기")
                            .font(.subhead1)
                            .padding()
                        LikeButtonView(
                            isLiked: movie.isLiked,
                            action: { viewModel.toggleLike(id: movie.id) }
                        )
                            .padding(.trailing)
                    }
                    .overlay(alignment: .bottom){
                        Rectangle()
                            .frame(height: 1)
                            .foregroundStyle(.gray)
                    }
                }
                .padding(.top,22)
                
                Image(movie.thumbnail)
                    .resizable()
                    .frame(width: 300,height: 400)
                
                
                Text("\(movie.title)")
                    .font(.head1)
                    .padding(.bottom, 10)
                
                Text(movie.summary)
                    .font(.cap1)
                    .padding(.bottom, 10)
                
                HStack{
                    Text("- 감독: \(movie.director)")
                        .font(.body1)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Button {
                        showAgeInfo = true
                    } label: {
                        ZStack {
                            Rectangle()
                                .foregroundStyle(.white)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 26)
                                        .stroke(.gray)
                                        .foregroundStyle(.white)
                                        .frame(width: 100)
                                }
                            
                            Text("\(movie.ageRating)세 이상")
                                .foregroundStyle(.red)
                                .font(.body1)
                        }
                    }
                    .buttonStyle(.plain)
                    .popover(isPresented: $showAgeInfo) {
                        Text(ageInfoText)
                            .font(.footnote)
                            .padding()
                            .presentationCompactAdaptation(.popover)
                    }
                    
                }
                .padding(.bottom)
                
                Text(verbatim: "- 출시년도: \(movie.releaseYear)")
                    .font(.body1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.bottom)
                Text("- 러닝타임: \(movie.runningTime)")
                    .font(.body1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                Text("- 별점")
                    .font(.body1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.top, 10)
                StarRatingView(rating: $rating)
                    .padding(.leading)
                
                Text("- 감상평")
                    .font(.body1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.top, 10)
                
                TextField("영화에 대한 감상평을 남겨보세요", text: $review)
                    .padding(.horizontal)
                    .padding(.bottom)
                
            }
        }
        .navigationTitle(movie.title)
        Spacer()
    }
        
}

#Preview {
    // 좋아요가 동작하려면 movie가 viewModel.listMovie 안에 있어야 함
    let viewModel = MovieInfoViewModel()
    MovieInfoView(movie: viewModel.listMovie[0], viewModel: viewModel)
}
