//
//  FrameworkCellView.swift
//  Apple-Frameworks
//
//  Created by Samantha Cannillo on 8/25/23.
//

import SwiftUI

struct FrameworkCellView: View {
 
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
    
}

struct FrameworkCellView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkCellView(framework: MockData.sampleFramework)
    }
}
