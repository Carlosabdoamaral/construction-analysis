//
//  HomeView.swift
//  Construction-analysis
//
//  Created by Carlos Amaral on 19/01/22.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("isAddingConstruction") var isAddingConstruction : Bool = false
    @AppStorage("isShowingOnboarding") var isShowingOnboarding : Bool = false
    
    @State private var historicalSecurity = 50.0
    
    func openOnboarding() {
        self.isShowingOnboarding = true
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [Color("BlueDark"), Color("BlueLight")],
                    startPoint: .top,
                    endPoint: .bottom
                )
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    VStack(alignment: .leading) {
                        Text("Nível de segurança média")
                            .font(.footnote)
                            .foregroundColor(Color("BlueDark"))
                        Slider(value: $historicalSecurity, in: 0...100)
                            .tint(Color("BlueDark"))
                            .disabled(true)
                        
                        Text("Principais falhas")
                            .font(.footnote)
                            .foregroundColor(.red)
                        ScrollView(.horizontal) {
                            HStack {
                                
                                ForEach(0..<10) { i in
                                    Text("Extintores")
                                        .frame(height: 25)
                                        .font(.footnote)
                                        .foregroundColor(.black.opacity(0.8))
                                        .padding(5)
                                        .background(.gray.opacity(0.2))
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                    .padding()
                    .background(.white)
                    .cornerRadius(25)
                    .padding()
                    
                    Spacer()
                }
                
            } // - ZSTACK
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                leading:
                    Image(systemName: "info.circle.fill")
                    .foregroundColor(.white)
                    .onTapGesture { openOnboarding() }
                ,
                trailing:
                    Image(systemName: "plus")
                    .onTapGesture {
                        isAddingConstruction.toggle()
                    }
                    .foregroundColor(.white)
                    .sheet(isPresented: $isAddingConstruction, onDismiss: {
                        self.isAddingConstruction = false
                    }) {
                        NewAnalysisView()
                    }
            )
        }
        .preferredColorScheme(.dark)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
