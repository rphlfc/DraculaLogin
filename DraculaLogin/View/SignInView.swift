//
//  SignInView.swift
//  DraculaLogin
//
//  Created by Raphael Cerqueira on 15/04/21.
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    @State var presentSignUp = false
    
    var body: some View {
        ZStack {
            Color.draculaBackground
                .ignoresSafeArea()
            
            VStack {
                HeaderView(titleColor: .draculaPurple)
                
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
                            .strokeBorder(Color.draculaPurple, lineWidth: 1)
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
                            .strokeBorder(Color.draculaPurple, lineWidth: 1)
                    )
                    .padding(.horizontal)
                    
                    Button(action: {}, label: {
                        Text("Sign In")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(Color.draculaGreen)
                            .foregroundColor(.draculaBackground)
                            .cornerRadius(8)
                            .padding(.horizontal)
                    })
                    
                    Button(action: {
                        presentSignUp.toggle()
                    }, label: {
                        Text("Don't have an account yet?\nSign up now.")
                            .underline()
                            .multilineTextAlignment(.center)
                            .foregroundColor(.draculaForeground)
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                    })
                }
                .padding(.top)
            }
        }
        .sheet(isPresented: $presentSignUp, content: {
            SignUpView()
        })
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
