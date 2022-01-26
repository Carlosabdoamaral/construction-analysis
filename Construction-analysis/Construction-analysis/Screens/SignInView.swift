//
//  SignInView.swift
//  Construction-analysis
//
//  Created by Carlos Amaral on 21/01/22.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email : String = ""
    @State private var password : String = ""
    
    func SignIn() {
        if email.isEmpty || password.isEmpty {
            
        } else {
            // Fazer o request
        }
    }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BlueDark"), Color("BlueLight")] ,
                startPoint: .bottomTrailing,
                endPoint: .topLeading
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                // Substituir pela logo do projeto
                //MARK: LOGO
//                Image("logo_cis_branca")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 50)
                
                
                Text("Bem-vindo(a)(e) ao")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                
                Text("Construction Analysis")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                
                VStack {
                    TextField("Email", text: $email)
                        .padding()
                        .background()
                        .frame(width: UIScreen.screenWidth - 50)
                        .cornerRadius(25)
                    
                    SecureField("Senha", text: $password)
                        .padding()
                        .background()
                        .frame(width: UIScreen.screenWidth - 50)
                        .cornerRadius(25)
                    
                    Button {
                        
                    } label: {
                        HStack {
//                            Image(systemName: "arrow.right.square")
                            Text("Entrar")
                        }
                        .padding(10)
                        .foregroundColor(.white)
                    }
                }
                
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
