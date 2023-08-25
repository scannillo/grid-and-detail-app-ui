//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Samantha Cannillo on 11/4/22.
//

import SwiftUI

struct FrameworkGridView: View {
    
    // Use StateObject when initializing, use ObservedObject when injecting
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework,
                                                                    isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkCellView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍏 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

// Imperative - telling UI when and how to update
// Declarative - update source of truth, and UI reacts to change & updates
