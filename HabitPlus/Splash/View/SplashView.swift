//
//  SplashView.swift
//  HabitPlus
//
//  Created by Egito Filho on 19/12/23.
//

import SwiftUI

struct SplashView: View {
    
    @ObservedObject var viewModel: SplashViewModel
    
    var body: some View {
        Group {
            switch viewModel.uiState {
            case .loading:
                loadingView()
            case .goToSingInScrenn:
                viewModel.signInView()
            case .goToHomeScrenn:
                Text("Carregar homescreen")
            case .error(let msg):
                Text("Carregar mensagem de erro: \(msg)")
            }
        }.onAppear(perform:viewModel.onAppear)
    }
}

/// Criação de funções em extensões
///*consigo passar parametros*
extension SplashView {
    func loadingView(error: String? = nil) -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
            
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("Habit"), message: Text(error), dismissButton: .default(Text("Ok")){
                            ///faz algo quando some o alerta
                        })
                    }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider{
    static var previews: some View {
        let viewModel = SplashViewModel()
        SplashView(viewModel: viewModel)
    }
}
