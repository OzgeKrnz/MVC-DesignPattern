//
//  User.swift
//  mvc-architecture
//
//  Created by özge kurnaz on 20.02.2025.
//

import Foundation

struct User{
    let firstName, lastName, email: String
    let age: Int
    let location: Location
    
}

struct Location{
    let lat: Double
    let lng: Double
}
