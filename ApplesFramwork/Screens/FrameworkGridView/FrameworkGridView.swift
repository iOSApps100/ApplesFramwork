//
//  FrameworkGridView.swift
//  ApplesFramwork
//
//  Created by Vivek  Garg on 28/08/24.
//

import SwiftUI

struct FrameworkGridView: View {
    // it will persist with data, stay alive while frameworkGridView gets destroyes and re-created all the time.
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                                print("\(framework.name)")
                            }
                    }
                }
            }
            .navigationTitle("Apples Framework")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        
    }
}

#Preview {
    FrameworkGridView()
}


