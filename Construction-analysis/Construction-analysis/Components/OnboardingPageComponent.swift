//
//  OnboardingPageComponent.swift
//  Construction-analysis
//
//  Created by Carlos Amaral on 19/01/22.
//

import SwiftUI

struct OnboardingPageComponent: View {
    
    var isLast : Bool
    @State public var imageName : String = ""
    @State public var mainText : String = ""
    @State public var subText : String = ""
    @AppStorage("isShowingOnboarding") var isShowingOnboarding : Bool = true
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("\(imageName)")
                .resizable()
                .scaledToFit()
                .frame(width: (UIScreen.screenWidth - 100), height: (UIScreen.screenHeight - 550))
                .padding(.bottom, 50)
        
            
            VStack {
                Text("\(mainText)")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("BlueDark"))
                
                Text("\(subText)")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(Color("GrayText"))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, UIScreen.screenWidth - 340)
                    .padding(.top)
            }
            
            Spacer()
            
            if isLast{
                Text("Iniciar")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.screenWidth - 100, height: 40)
                    .background(Color("BlueDark"))
                    .cornerRadius(25)
                    .padding(.bottom, 50)
                    .onTapGesture {
                        self.isShowingOnboarding = false
                    }
            }
            else {
                Image(systemName: "arrow.left.arrow.right.circle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color("GrayText"))
                    .frame(width: 35, alignment: .center)
                    .padding(.bottom, 50)
            }
        }
    }
}

struct OnboardingPageComponent_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPageComponent(isLast: true, imageName: "worker_building")
    }
}
