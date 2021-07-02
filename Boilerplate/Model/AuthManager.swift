//
//  AuthManager.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 14/06/21.
//

import Foundation

protocol AuthManager {
    var userLogged: Bool { get }
    var accessToken: String? { get }
    func saveAccesToken(_ token: String)
    func logout()
}


final class AuthManagerSharedPrefs: AuthManager {
    
    fileprivate enum UserDefaultsKeys {
        static let token = "TOKEN"
    }
    
    var userLogged: Bool {
        get {
            return accessToken != nil
        }
    }
    
    internal var accessToken: String?

    init() {
        accessToken = UserDefaults.standard.string(forKey: UserDefaultsKeys.token)
    }
    
    func saveAccesToken(_ token: String) {
        UserDefaults.standard.set(token, forKey: UserDefaultsKeys.token)
    }
    
    func logout() {
        UserDefaults.standard.removeObject(forKey: UserDefaultsKeys.token)
    }
}
