//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Samantha Cannillo on 8/25/23.
//

import SwiftUI

struct XDismissButton: View {
    
    // Don't initialize binding with value, it gets passed a value
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button() {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(true))
    }
}
