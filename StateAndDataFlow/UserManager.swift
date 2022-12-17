//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Albina Lega on 17.12.2022.
//

import Foundation

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
