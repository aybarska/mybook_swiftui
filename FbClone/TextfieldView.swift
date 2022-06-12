//
//  TextfieldView.swift
//  FbClone
//
//  Created by 김소현 on 2022/06/12.
//

import SwiftUI

struct TextfieldView: View {
    @Binding var text: String
    
    var body: some View {
        TextField("브로콜리의 모든 것을 검색해보세요 ^0^~",text: $text)
            .padding(7)
            .background(Color(.systemGray5))
            .cornerRadius(13)
            .padding(.horizontal, 15)
    }
}

struct TextfieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldView(text: .constant(""))
    }
}
