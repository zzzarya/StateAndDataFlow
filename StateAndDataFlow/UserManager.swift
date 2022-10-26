//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by brubru on 24.10.2022.
//

import Foundation

class UserManager: ObservableObject {
    @Published var user = User()
    
    var nameCheck: Bool {
        user.name.count >= 3
    }
    
}

struct User: Codable {
    var name = ""
    var isRegister = false
}
