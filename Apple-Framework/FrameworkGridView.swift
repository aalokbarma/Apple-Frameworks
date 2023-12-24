//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Aalok Barma on 24/09/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var ViewModal = FrameworkGridViewModal()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
    
    var body: some View {
            NavigationView{
                ScrollView{
                    LazyVGrid(columns: columns){
                        ForEach(MockData.frameworks) { framework in
                            IconsStack(framework: framework)
                                .onTapGesture {
                                    ViewModal.SelectedFramework = framework
                                }
                        }
                    }
                }
                .navigationTitle("🚀 Frameworks")
                .sheet(isPresented: $ViewModal.isShowingDetailView){
                    FrameworkDetailView(framework: ViewModal.SelectedFramework ?? MockData.sampleFramework, isShowingDetailView: $ViewModal.isShowingDetailView)
                }
            }
            
        }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

struct backgroundView : View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.black, Color("darkGray")]),
                       startPoint: .topLeading,
                       endPoint: .bottom)
        .ignoresSafeArea()
    }
}

struct IconsStack: View {
    var framework: Framework
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
