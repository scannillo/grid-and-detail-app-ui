//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Samantha Cannillo on 11/4/22.
//

import SwiftUI

// ObservableObject -> publishes its changes; views can listen to this
final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false // The stuff you want to broadcast needs a Published
}


// If not going to subclass, make it final (?)
