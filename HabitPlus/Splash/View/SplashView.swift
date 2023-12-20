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
            loadingView()
        case .goToSingInScrenn:
            Text("Carregar tela de login")
        case .goToHomeScrenn:
            Text("Carregar homescreen")
        case .error(let msg):
            Text("Carregar mensagem de erro: \(msg)")
        }
    }
}

/// Criação de funções em extensões
///*consigo passar parametros*
extension SplashView {
    func loadingView() -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
        }
    }
}

struct SplashView_Previews: PreviewProvider{
    static var previews: some View {
        SplashView()
    }
}
