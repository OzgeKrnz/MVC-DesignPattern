//
//  NetworkService.swift
//  mvc-architecture
//
//  Created by özge kurnaz on 20.02.2025.
//

import Foundation

class NetworkService{
    static let shared = NetworkService()
    private init(){}
    
    private var user: User?
    
    
    // authentication için basit network servisi
    
    func login(email:String, password:String, completion: @escaping(Bool) ->Void){
        DispatchQueue.global().async {
            sleep(2)
            DispatchQueue.main.async {
                if email == "test@test.com" && password == "password"{
                    self.user = User(firstName: "Özge", lastName: "Kurnaz", email: "test@test.com", age: 23, location: Location(lat: 2.1948, lng: -6.53456))
                    completion(true)
                }else{
                    self.user = nil
                    completion(false)
                }
                
            }
        }
    }
    
    // simulate a get request
    func getLoggedInUser() -> User?{
        return user 
    }
    
}
