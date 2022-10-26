//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by brubru on 24.10.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var userManager: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonView(title: timer.buttonTitle, color: .red) {
                timer.startTimer()
            }
            Spacer()
            ButtonView(title: "LogOut", color: .blue) {
                StorageManager.shared.delete(userManager: userManager)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
