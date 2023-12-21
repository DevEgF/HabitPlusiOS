//
//  SplashViewModel.swift
//  HabitPlus
//
//  Created by Egito Filho on 20/12/23.
//

import SwiftUI

class SplashViewModel: ObservableObject {
    
    @Published var uiState: SplashUISate = .loading
    
    func onAppear(){
        ///fazer algo assincrono e muda o estado da uistate
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            //aqui é chamado apos 2 segundos
            self.uiState = .goToSingInScrenn
        }
    }
}
