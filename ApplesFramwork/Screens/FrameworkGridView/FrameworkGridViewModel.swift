//
//  FrameworkGridViewModel.swift
//  ApplesFramwork
//
//  Created by Vivek  Garg on 29/08/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
   @Published var isShowingDetailView = false
}
