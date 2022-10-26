//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Антон Заричный on 26.10.2022.
//

import Foundation

class StorageManager {
    static let shared = StorageManager()
    
    private let userDefaults = UserDefaults.standard
    private let userKey = "user"
    
    private init() {}
    
    func save(user: User) {
        guard let data = try? JSONEncoder().encode(user) else { return }
        userDefaults.set(data, forKey: userKey)
    }
    
    func delete(userManager: UserManager) {
        userManager.user.name = ""
        userManager.user.isRegister = false
        userDefaults.removeObject(forKey: userKey)
    }
    
    func fetchUser() -> User {
        guard let data = userDefaults.data(forKey: userKey) else { return User() }
        guard let user = try? JSONDecoder().decode(User.self, from: data) else { return User() }
        
        return user
    }
}
