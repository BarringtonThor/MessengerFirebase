//
//  LoginView.swift
//  MessengerFirebase
//
//  Created by Barrington Thorpe on 7/11/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                
                
                Image("Messenger-Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                
                
                VStack{
                    TextField("Enter your email", text: $email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
                
                
                Button{
                    print("Forgot password")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .foregroundColor(Color(.systemMint))
                
                
                Button{
                    print("Handle login")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemMint))
                        .cornerRadius(10)
                }
                .padding(.vertical)
                
                
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                
                HStack{
                    Image("Facebook-Logo-2")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemMint))
                }
                .padding(.top, 8)
                
                
                Spacer()
                
                
                Divider()
                
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
                .foregroundColor(Color(.systemMint))
                
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
