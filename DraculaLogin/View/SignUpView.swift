//
//  SignUpView.swift
//  DraculaLogin
//
//  Created by Raphael Cerqueira on 15/04/21.
//

import SwiftUI

struct SignUpView: View {
    @State var email = ""
    @State var password = ""
    @State var passwordAgain = ""
    
    @Environment(\.presentationMode) var presentation
    
    let color = Color.draculaPink
    
    var body: some View {
        ZStack {
            Color.draculaBackground
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        presentation.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.draculaForeground)
                            .padding()
                            .background(Color.draculaCurrent)
                            .clipShape(Circle())
                    })
                }
                .padding()
                
                Spacer(minLength: 0)
                
                HeaderView(titleColor: color)
                
                VStack(spacing: 15) {
                    HStack(spacing: 15) {
                        Image(systemName: "envelope")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25)
                            .foregroundColor(.draculaComment)
                        
                        CustomTextField(placeholder: Text("Email").foregroundColor(.draculaForeground), text: $email)
                    }
                    .frame(height: 30)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .strokeBorder(color, lineWidth: 1)
                    )
                    .padding(.horizontal)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "key")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .foregroundColor(.draculaComment)
                        
                        CustomSecureField(placeholder: Text("Password").foregroundColor(.draculaForeground), text: $password)
                    }
                    .frame(height: 30)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .strokeBorder(color, lineWidth: 1)
                    )
                    .padding(.horizontal)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "key")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .foregroundColor(.draculaComment)
                        
                        CustomSecureField(placeholder: Text("Retype password").foregroundColor(.draculaForeground), text: $passwordAgain)
                    }
                    .frame(height: 30)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .strokeBorder(color, lineWidth: 1)
                    )
                    .padding(.horizontal)
                    
                    Button(action: {}, label: {
                        Text("Sign Up")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(Color.draculaGreen)
                            .foregroundColor(.draculaBackground)
                            .cornerRadius(8)
                            .padding(.horizontal)
                    })
                }
                .padding(.top)
                
                Spacer(minLength: 0)
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
