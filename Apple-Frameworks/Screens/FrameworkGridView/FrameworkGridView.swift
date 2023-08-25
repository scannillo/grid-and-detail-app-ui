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
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkCellView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍏 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
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
