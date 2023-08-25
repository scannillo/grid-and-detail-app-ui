//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Samantha Cannillo on 11/4/22.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack() {
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
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
                CustomButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.frameworks.last!, isShowingDetailView: .constant(true))
    }
}
