//
//  MovieInfoView.swift
//  Moayo_kingchobo
//
//  Created by 전시언 on 10/11/26.
//

import SwiftUI

struct MovieInfoView: View {
    @State private var isLiked = false
    @State private var review: String = ""
    @State private var rating: Int = 0
    @State private var checked = false
    
    var body: some View {
        VStack{
            HStack{
                HStack(spacing: 0){
                    Text("이미 보셨나요?")
                        .font(.title2)
                        .padding()
                    CheckView(isChecked: $checked)
                    Spacer()
                    
                    
                    Text("즐겨찾기")
                        .font(.title2)
                        .padding()
                    LikeButtonView(isLiked: $isLiked)
                        .padding(.trailing)
                }
            }
            .padding(.top,22)
            
            
            
            Image("Thumbnail")
                .resizable()
                .frame(width: 300,height: 400)
            
            
            Text("영화 제목 : Forrest Gump")
                .font(.title)
                .padding(.bottom, 10)
            
            Text("- 순수함의 대명사 '포레스트 검프'가 우연과 노력으로 현대 미국의 삶을 살아가는 이야기")
                .font(.system(size: 11))
                .padding(.bottom, 10)
            
            HStack{
                Text("감독: Tom Hanks")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                Text("12세 이상 관람가")
                    .border(.black)
                    .padding(.trailing)
            }
            
            Text("출시년도: 1994")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            Text("러닝타임: 2시간 22분")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            Text("별점")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.top, 10)
            StarRatingView(rating: $rating)
                .padding(.leading)
            
            Text("감상평")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.top, 10)
            TextField("영화에 대한 감상평을 남겨보세요", text: $review)
                .padding(.horizontal)
                .padding(.bottom, 20)
            
        }
        Spacer()
    }
}


#Preview {
    MovieInfoView()
}
