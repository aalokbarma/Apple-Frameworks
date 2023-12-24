//
//  FrameworkDetailView.swift
//  Apple-Framework
//
//  Created by Aalok Barma on 25/09/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework : Framework
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        
        VStack (spacing: 50) {
            HStack{
                Spacer()
                Button {
                isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            Spacer()
            DetailsIconView(name: framework.name, imageName: framework.imageName)
            FrameworkDetailstext(descriptionText: framework.description)
            Button {
                
            } label: {
                LearnMoreButton(title: "Learn More", textColor: Color.white, backgroundColor: Color(.red))
            }
            Spacer()
            
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}

struct DetailsIconView : View {
    var name: String
    var imageName: String
    var body: some View {
        VStack (spacing: 15){
            Image(imageName)
                .resizable()
                .frame(width:100, height: 100)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
        }
    }
}

struct FrameworkDetailstext: View {
    var descriptionText: String
    var body: some View {
        Text(descriptionText)
            .font(.subheadline)
            .foregroundStyle(Color(.label))
            .padding()
    }
}
