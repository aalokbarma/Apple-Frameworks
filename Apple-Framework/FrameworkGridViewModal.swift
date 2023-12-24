//
//  FrameworkGridViewModal.swift
//  Apple-Framework
//
//  Created by Aalok Barma on 25/09/23.
//

import SwiftUI

final class FrameworkGridViewModal: ObservableObject{
    var SelectedFramework : Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
