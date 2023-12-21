//
//  SplashViewModel.swift
//  HabitPlus
//
//  Created by Egito Filho on 20/12/23.
//

import SwiftUI

class SplashViewModel: ObservableObject {
    
    @Published var uiState: SplashUISate = .loading
    
    func onAppear() {
        ///fazer algo assincrono e muda o estado da uistate
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            ///estado da view alterado
            self.uiState = .goToSingInScrenn
        }
    }
}

extension SplashViewModel {
  func signInView() -> some View {
    return SplashViewRouter.makeSignInView()
  }
}
