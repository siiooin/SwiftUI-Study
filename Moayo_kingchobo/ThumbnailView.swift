//
//  ThumbnailView.swift
//  Moayo_kingchobo
//
//  Created by 전시언 on 10/11/26.
//

import SwiftUI

struct ThumbnailView: View {

    var body: some View {
        NavigationStack {
            VStack() {
                Image(.thumbnail)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .padding(.bottom, 20)

                NavigationLink{
                    MovieInfoView()
                } label:{
                    Text("영화 정보 더보기")
                        .padding()
                        .border(.black)
                        .foregroundStyle(Color.black)
                        .padding(.bottom, 50)
                        .font(.title2.bold())
                        
                }
                .navigationTitle("Movie🎬")
                
            }
            
        }
    }
}

#Preview {
    ThumbnailView()
}
