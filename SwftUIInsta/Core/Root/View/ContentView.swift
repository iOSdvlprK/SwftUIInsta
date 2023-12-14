//
//  ContentView.swift
//  SwftUIInsta
//
//  Created by joe on 2023/12/08.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
                    .environmentObject(registrationViewModel)
            } else {
                MainTabView()                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
