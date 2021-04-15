//
//  CustomTextField.swift
//  DraculaLogin
//
//  Created by Raphael Cerqueira on 15/04/21.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
                .foregroundColor(.draculaForeground)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(placeholder: Text("Email"), text: .constant(""))
    }
}
