//
//  CustomSecureField.swift
//  DraculaLogin
//
//  Created by Raphael Cerqueira on 15/04/21.
//

import SwiftUI

struct CustomSecureField: View {
    var placeholder: Text
    @Binding var text: String
    var commit: ()->() = { }

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            
            SecureField("", text: $text, onCommit: commit)
                .foregroundColor(.draculaForeground)
        }
    }
}

struct CustomSecureField_Previews: PreviewProvider {
    static var previews: some View {
        CustomSecureField(placeholder: Text("Senha"), text: .constant(""))
    }
}
