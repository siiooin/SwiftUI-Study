//
//  CheckView.swift
//  Moayo_kingchobo
//
//  Created by 전시언 on 10/11/26.
//

import SwiftUI

struct CheckView: View {
    @Binding var isChecked: Bool
    
    var body: some View {
        Button{
            isChecked.toggle()
        }label:{
            Image(systemName: isChecked ? "checkmark.circle.fill" : "circle")
        }
    }
}
