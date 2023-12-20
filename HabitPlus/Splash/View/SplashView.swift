//
//  SplashView.swift
//  HabitPlus
//
//  Created by Egito Filho on 19/12/23.
//

import SwiftUI

struct SplashView: View {
    ///inicializando a tela com loading
    @State var state: SplashUISate = .loading
    
    var body: some View {
        switch state {
        case .loading:
            Text("Loading")
        case .goToSingInScrenn:
            Text("Carregar tela de login")
        case .goToHomeScrenn:
            Text("Carregar homescreen")
        case .error(let msg):
            Text("Carregar mensagem de erro: \(msg)")
        }
    }
}

struct SplashView_Previews: PreviewProvider{
    static var previews: some View {
        SplashView()
    }
}
