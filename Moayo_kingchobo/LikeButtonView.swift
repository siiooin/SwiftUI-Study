//
//  LikeButtonView.swift
//  Moayo_kingchobo
//
//  Created by 전시언 on 10/11/26.
//

import SwiftUI

struct LikeButtonView: View {
    @Binding var isLiked: Bool
    
    var body: some View {
        Button {
            isLiked.toggle()
        } label: {
            Image(isLiked ? "Like 1" : "LikeEmpty")
                .resizable()
                .frame(width: 28, height: 28)
        }
    }
}
