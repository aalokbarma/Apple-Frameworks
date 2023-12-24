//
//  LearnMoreButton.swift
//  Apple-Framework
//
//  Created by Aalok Barma on 25/09/23.
//

import SwiftUI

struct LearnMoreButton : View{
    var title: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View{
        Text(title)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .semibold))
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .cornerRadius(10)
    }
}

struct LearnMoreButton_Previews: PreviewProvider {
    static var previews: some View {
        LearnMoreButton(title: "Learn More", textColor: Color.white, backgroundColor: Color(.red))
    }
}
