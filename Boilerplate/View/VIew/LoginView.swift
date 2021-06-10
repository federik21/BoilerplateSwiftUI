//
//  LoginView.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 31/05/21.
//

import SwiftUI

protocol LoginFlowDelegate {
    func doLogin()
}

struct LoginView: View {
    
    var delegate: LoginFlowDelegate?
    
    @State private var username = "federicopicci@gmail.com"
    @State private var password = "piopiopio"
    
    @State private var isEditing = false

    var body: some View {
        VStack {
            TextField(
                "User name (email address)",
                text: $username
            ) { isEditing in
                self.isEditing = isEditing
            } onCommit: {
                validate(name: username)
            }
            .disableAutocorrection(true)
            .border(Color(UIColor.separator))
            
            TextField(
                "password",
                text: $password
            ) { isEditing in
                self.isEditing = isEditing
            } onCommit: {
                validate(password: password)
            }
            .disableAutocorrection(true)
            .border(Color(UIColor.separator))
            
            Button("Login", action: {
                delegate?.doLogin()
            })
        }
    }
    
    func validate(name: String) {
        guard !name.isEmail else {
            return
        }
    }
    
    func validate(password: String) {
        guard password.count > 6 else {
            return
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
