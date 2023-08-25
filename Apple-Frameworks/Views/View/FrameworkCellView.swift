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
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }
    }
    
}

struct FrameworkCellView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkCellView(framework: MockData.sampleFramework)
    }
}
