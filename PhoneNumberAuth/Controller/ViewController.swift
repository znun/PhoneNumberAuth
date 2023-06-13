//
//  ViewController.swift
//  PhoneNumberAuth
//
//  Created by Mahmudul Hasan on 13/6/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    var color = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLayout()
        self.color = self.view.backgroundColor!

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
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            UIView.animate(withDuration: 1, animations: {
                self.view.backgroundColor = .yellow
                self.loginBtn.setTitleColor(self.color, for: .normal)
            },completion: {(finish: Bool) in
                UIView.animate(withDuration: 1, animations: {
                    self.view.backgroundColor = self.color
                    self.loginBtn.setTitleColor(.systemYellow, for: .normal)
                }, completion: {(finish: Bool) in
                    UIView.animate(withDuration: 1, animations: {
                        self.view.backgroundColor = .systemGreen
                    }, completion: {(finish: Bool) in
                        UIView.animate(withDuration: 1, animations: {
                            self.view.backgroundColor = self.color
                        })
                        
                    })
                    
                })
            })
            
            
        })
        
    }
    
    @IBAction func loginBtnTapped(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil)
        guard let controller = vc.instantiateViewController(withIdentifier: "MobileViewController") as? MobileViewController else {
            return
        }
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func readyBtnTapped(_ sender: Any) {
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
}

