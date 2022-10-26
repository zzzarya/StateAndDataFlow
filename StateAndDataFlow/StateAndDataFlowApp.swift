//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by brubru on 24.10.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var userManager = UserManager(user: StorageManager.shared.fetchUser())
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
