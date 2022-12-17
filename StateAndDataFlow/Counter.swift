//
//  Counter.swift
//  StateAndDataFlow
//
//  Created by Альбина Лега on 17.12.2022.
//

import Foundation
import Combine


class Counter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    
    var counter = 0
    var text = "" {
        didSet {
            counter = text.count
        }
    }
    
    private func updateCounter() {
        if counter >= 3 {
            
        }
    }
}
