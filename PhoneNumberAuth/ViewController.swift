//
//  ViewController.swift
//  PhoneNumberAuth
//
//  Created by Mahmudul Hasan on 13/6/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        configureLayout()
    }

    func configureLayout() {
        self.logo.transform = CGAffineTransform(rotationAngle: 360)
        UIView.animate(withDuration: 3, animations: {
            self.logo.transform = CGAffineTransform(rotationAngle: 0)
        }, completion: nil)
    }

}

