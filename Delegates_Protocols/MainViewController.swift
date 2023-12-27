//
//  MainViewController.swift
//  Delegates_Protocols
//
//  Created by Rares Marina on 12/10/23.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var bulbImageView: UIImageView!
    var lightOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.goToSwitchView))
        bulbImageView.addGestureRecognizer(tap)
        bulbImageView.isUserInteractionEnabled = true
    }
    
    @objc func goToSwitchView() {
        let controller = storyboard?.instantiateViewController(identifier: "SwitchViewController") as! SwitchViewController
        controller.switchIsOn = lightOn
        controller.delegate = self
        present(controller, animated: true, completion: nil)
    }
}

extension MainViewController:BulbDelegate{
    func toggleBulb(_ state: Bool) {
        lightOn = state
        if state{
            self.view.backgroundColor = .orange
            bulbImageView.image = #imageLiteral(resourceName: "bulbOn")
        } else{
            self.view.backgroundColor = .darkGray
            bulbImageView.image = #imageLiteral(resourceName: "bulbOff")  
        }
    }
    
    
}
