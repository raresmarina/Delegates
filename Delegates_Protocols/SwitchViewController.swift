//
//  SwitchViewController.swift
//  Delegates_Protocols
//
//  Created by Rares Marina on 12/10/23.
//

import UIKit

protocol BulbDelegate: AnyObject {
    func toggleBulb(_ state:Bool)
}

class SwitchViewController: UIViewController {

    @IBOutlet weak var switchView: UISwitch!
    var switchIsOn: Bool!
    var delegate: BulbDelegate!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        switchView.setOn(switchIsOn, animated: true)
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        delegate.toggleBulb(sender.isOn)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
}
