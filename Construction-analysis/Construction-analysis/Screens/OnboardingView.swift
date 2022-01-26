//
//  OnboardingView.swift
//  Construction-analysis
//
//  Created by Carlos Amaral on 19/01/22.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            TabView {
                OnboardingPageComponent(isLast: false, imageName: "worker_building", mainText: "Valide sua segurança" ,subText: "Na plataforma você pode validar o nível de segurança do seu local de obra")
                OnboardingPageComponent(isLast: false, imageName: "worker_group_planning", mainText: "Outro Valide sua segurança" ,subText: "Na plataforma você pode validar o nível de segurança do seu local de obra")
                OnboardingPageComponent(isLast: true, imageName: "logo_cis_colorida", mainText: "Olá!", subText: "Por: Centro de Inovação SESI para tecnologias para saúde")
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
