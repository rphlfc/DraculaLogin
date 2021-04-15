//
//  HeaderView.swift
//  DraculaLogin
//
//  Created by Raphael Cerqueira on 15/04/21.
//

import SwiftUI

struct HeaderView: View {
    var titleColor: Color
    
    var body: some View {
        VStack(spacing: 0) {
            Image("dracula")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
            
            Text("Dracula")
                .font(Font.custom("AbrilText-Bold", size: 70))
                .foregroundColor(titleColor)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(titleColor: .draculaGreen)
    }
}
