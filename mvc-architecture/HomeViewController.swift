//
//  HomeViewController.swift
//  mvc-architecture
//
//  Created by özge kurnaz on 20.02.2025.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // fetch userdata
        
        user = NetworkService.shared.getLoggedInUser()
        
        welcomeLabel.text? = "Hello, \(user.firstName) \(user.lastName)"
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
   
    

}
