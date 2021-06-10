//
//  File.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 31/05/21.
//

import Foundation

protocol ApiClient {
    func login(username: String, password: String, completion: Result<LoginResponseModel, Error> )
}

protocol LoginResponseModel {
    
}
