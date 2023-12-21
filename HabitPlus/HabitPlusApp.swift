//
//  HabitPlusApp.swift
//  HabitPlus
//
//  Created by Egito Filho on 19/12/23.
//

import SwiftUI

@main
struct HabitPlusApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView(viewModel: SplashViewModel())
        }
    }
}
