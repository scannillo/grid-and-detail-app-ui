//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Samantha Cannillo on 11/4/22.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack() {            
            FrameworkCellView(framework: framework)
            
            Text(framework.description)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(20)
                .padding()
            
            Spacer()
            
            Button() {
                isShowingSafariView = true
            } label: {
                // CustomButton(title: "Learn More") old custom button
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent) // iOS 15+
            .controlSize(.large)
            .buttonBorderShape(.capsule)
            .tint(.red)
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.frameworks.last!)
    }
}
