//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by brubru on 24.10.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var userManager: UserManager
        
    var body: some View {
        VStack {
            ZStack {
                TextField("Enter your name...", text: $userManager.user.name)
                    .multilineTextAlignment(.center)
                Text("\(userManager.user.name.count)")
                    .padding(.leading, 350)
                    .foregroundColor(userManager.nameCheck ? .green : .red)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
            .disabled(!userManager.nameCheck)
        }
    }
}

extension RegisterView {
    private func registerUser() {
        if !userManager.user.name.isEmpty {
            userManager.user.isRegister.toggle()
            StorageManager.shared.save(user: userManager.user)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
