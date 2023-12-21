//
//  SingInView.swift
//  HabitPlus
//
//  Created by Egito Filho on 21/12/23.
//

import SwiftUI

struct SingInView: View {
    
    @ObservedObject var viewModel: SingInViewModel
    
    @State var email = ""
    @State var password = ""
    @State var action: Int? = 0
    @State var navigationHiden = true
    
    var body: some View {
        NavigationView {
            
            ScrollView(showsIndicators: false){
                
                VStack(alignment: .center, spacing: 20) {
                    
                    Spacer(minLength: 80)
                    
                    VStack(alignment: .center, spacing: 8) {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal, 48)
                        
                        Text("Login")
                            .foregroundColor(.orange)
                            .font(Font.system(.title).bold())
                            .padding(.bottom, 8)
                        
                        numberField
                        passwordField
                        enterButton
                        registerLink
                    }
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.horizontal, 32)
                .background(Color.white)
                .navigationBarTitle("Login", displayMode: .inline)
                .navigationBarHidden(navigationHiden)
        }
    }
}

extension SingInView {
    var numberField: some View {
        TextField("", text: $email)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    }
}

extension SingInView {
    var passwordField: some View{
        SecureField("", text: $password)
            .border(Color.black)
    }
}

extension SingInView {
    var enterButton: some View {
        Button("Entrar") {
            //
        }
    }
}

extension SingInView {
    var registerLink: some View {
        VStack {
            Text("Ainda não possui login ativo?")
                .foregroundColor(.gray)
                .padding(.top, 48)
            
            ZStack {
                NavigationLink(
                    destination: Text("Tela de cadastro"),
                    tag: 1,
                    selection: $action,
                    label: { EmptyView() })
                
                Button("Realize seu cadastro") {
                    self.action = 1
                }
            }
        }
    }
}

struct SingInView_Previews: PreviewProvider{
    static var previews: some View {
        let viewModel = SingInViewModel()
        SingInView(viewModel: viewModel)
    }
}

