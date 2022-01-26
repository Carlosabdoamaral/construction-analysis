//
//  NewAnalysisComponent.swift
//  Construction-analysis
//
//  Created by Carlos Amaral on 20/01/22.
//

import SwiftUI

// IDs:
// 0 = Como você deseja chamar esse novo local? Deseja inserir a localizacao?
// 1 = Quantos andares tem na obra
// 2 = Possui rede de segurança em TODOS os vaos? Todos, Maioria,...
// 3 = Possui um ou mais extintor(es) de incendio em todos andares?
// 4 = 


struct NewAnalysisComponent: View {
    @State public var id : Int = 1
    
    @State var name : String = "aaaa"
    @State var localization : String = ""
    @State var layers : String = ""
    @State var safetynet : Int = 0 // Um bom momento para vincular com o SafetyNet
    @State var fireExtinguisher : Int = 0
    
    @State var haveLocalization : Bool = false
    @State var haveFireExtinguisher : Bool = false
    
    @State var haveErrors1 : Bool = false
    @State var haveErrors2 : Bool = false
    @State var haveErrors3 : Bool = false
    
    
    func goTo2() {
        
        if name.isEmpty {
            self.haveErrors1 = true
        } else {
            self.haveErrors1 = false
            self.id = 2
        }
    }
    
    func goTo3() {
        if name.isEmpty {
            self.haveErrors2 = true
        } else {
            self.haveErrors2 = false
            self.id = 3
        }
    }
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                
                //MARK: VIEW ID = 1
                if(id == 1) {
                    Image("worker_building")
                        .resizable()
                        .scaledToFit()
                        .frame(width: (UIScreen.screenWidth - 100), height: (UIScreen.screenHeight - 550))
                        .padding(.bottom, 50)
                    
                    Text("Dê um nome para o seu novo ambiente de obra")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("BlueDark"))
                        .frame(width: UIScreen.screenWidth - 100)
                        .multilineTextAlignment(.center)
                    
                    TextField("Insira o nome...", text: $name)
                        .padding()
                        .background(.gray.opacity(0.4))
                        .frame(width: UIScreen.screenWidth - 50 ,height: 50)
                        .cornerRadius(25)
                        .tint(Color("BlueDark"))
                        .foregroundColor(Color("BlueDark"))
                    
                    if haveErrors1 {
                        Text("Ops... Parece que você deixou esse campo em branco")
                            .foregroundColor(.red)
                            .font(.footnote)
                            .frame(width: UIScreen.screenWidth - 60)
                    }
                    
                    Spacer()
                    
                    Button {
                        goTo2()
                    } label: {
                        Text("Avançar")
                            .foregroundColor(Color("BlueDark"))
                    }
                }
                
                
                //MARK: VIEW ID = 2
                if(id == 2) {
                    Image("worker_building")
                        .resizable()
                        .scaledToFit()
                        .frame(width: (UIScreen.screenWidth - 100), height: (UIScreen.screenHeight - 550))
                        .padding(.bottom, 50)
                    
                    Text("A obra tem quantos andares?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("BlueDark"))
                        .frame(width: UIScreen.screenWidth - 100)
                        .multilineTextAlignment(.center)
                    
                    TextField("Insira a quantidade...", text: $layers)
                        .padding()
                        .background(.gray.opacity(0.4))
                        .frame(width: UIScreen.screenWidth - 50 ,height: 50)
                        .cornerRadius(25)
                        .foregroundColor(Color("BlueDark"))
                    
                    if haveErrors2 {
                        Text("Ops... Parece que você deixou esse campo em branco")
                            .foregroundColor(.red)
                            .font(.footnote)
                            .frame(width: UIScreen.screenWidth - 60)
                    }
                    
                    Spacer()
                    
                    Button {
                        goTo3()
                    } label: {
                        Text("Avançar")
                            .foregroundColor(Color("BlueDark"))
                    }
                }
                
            }
        }
    }
}

struct NewAnalysisComponent_Previews: PreviewProvider {
    static var previews: some View {
        NewAnalysisComponent()
    }
}
