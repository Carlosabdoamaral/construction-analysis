//
//  Construction_analysisApp.swift
//  Construction-analysis
//
//  Created by Carlos Amaral on 19/01/22.
//

import SwiftUI

@main
struct Construction_analysisApp: App {
    @AppStorage("isShowingOnboarding") var isShowingOnboarding : Bool = true
    
    // Substituir por uma requisicao ao core data
    @AppStorage("isLogged") var userIsLogged : Bool = true
    
    var body: some Scene {
        WindowGroup {
            if userIsLogged {
                if isShowingOnboarding {
                    OnboardingView()
                } else {
                    MainTabView()
                }
            } else {
                SignInView()
            }
        }
    }
}
