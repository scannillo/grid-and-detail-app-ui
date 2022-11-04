//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Samantha Cannillo on 11/4/22.
//

import SwiftUI

struct FrameworkGridView: View {
    
    // # of GridItems = # of columns
    let columns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    var body: some View {
        LazyVGrid(columns: columns) {
            FrameworkCellView(framework: MockData.frameworks.first!)
            FrameworkCellView(framework: MockData.frameworks.first!)
            FrameworkCellView(framework: MockData.frameworks.first!)
        }
        .padding()
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

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
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
    }
    
}
