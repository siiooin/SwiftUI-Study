//
//  LikeButtonView.swift
//  Moayo_kingchobo
//
//  Created by 전시언 on 10/11/26.
//

import SwiftUI

struct LikeButtonView: View {
    let isLiked: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(isLiked ? "Like 1" : "LikeEmpty")
                .resizable()
                .frame(width: 28, height: 28)
        }
    }
}
