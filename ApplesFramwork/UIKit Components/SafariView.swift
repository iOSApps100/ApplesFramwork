//
//  SafariView.swift
//  ApplesFramwork
//
//  Created by Vivek  Garg on 29/08/24.
//

import SwiftUI
import SafariServices

// UIViewControllerRepresentable and UIViewRepresentable are used for showing UIkit's UIViewController and UIView respectively on SwiftUI.
struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> some SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
//    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
//        
//    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
