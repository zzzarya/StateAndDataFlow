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
    }
}
