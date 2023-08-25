//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Samantha Cannillo on 11/4/22.
//

import SwiftUI

// ObservableObject -> publishes its changes; views can listen to this
final class FrameworkGridViewModel: ObservableObject {
    
    // # of GridItems = # of columns
    let columns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
}


// If not going to subclass, make it final (?)
