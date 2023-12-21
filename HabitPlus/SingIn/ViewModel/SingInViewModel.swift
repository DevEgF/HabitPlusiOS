//
//  SingInViewModel.swift
//  HabitPlus
//
//  Created by Egito Filho on 21/12/23.
//

import SwiftUI

class SingInViewModel: ObservableObject {
    
    @Published var uiState: SignInUIState = .none
    
    func login(email: String, password: String) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.uiState = .goToHomeScreen
        }
    }
}
