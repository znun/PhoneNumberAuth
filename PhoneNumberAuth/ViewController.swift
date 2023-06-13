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
        UIView.animate(withDuration: 1, animations: {
            self.logo.transform = CGAffineTransform(rotationAngle: 0)
        }, completion: nil)
        
        self.logo.transform = CGAffineTransform(scaleX: 0, y: 0)
        UIView.animate(withDuration: 1, animations: {
            self.logo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }, completion: {(finish:Bool) in
            UIView.animate(withDuration: 1, animations: {
                
                self.logo.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: nil)
            
        })
        
    }

}

