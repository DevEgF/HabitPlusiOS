//
//  SplashViewRouter.swift
//  HabitPlus
//
//  Created by Egito Filho on 21/12/23.
//

import SwiftUI

enum SplashViewRouter {
  
  static func makeSignInView() -> some View {
    let viewModel = SingInViewModel()
    return SingInView(viewModel: viewModel)
  }
}
