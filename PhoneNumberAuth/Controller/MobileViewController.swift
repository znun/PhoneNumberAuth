//
//  MobileViewController.swift
//  PhoneNumberAuth
//
//  Created by Mahmudul Hasan on 13/6/23.
//

import UIKit

class MobileViewController: UIViewController {

    @IBOutlet weak var numberTF: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Login"
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        
        if numberTF.text?.count == 10 {
            let vc = UIStoryboard(name: "Main", bundle: nil)
            guard let controller = vc.instantiateViewController(withIdentifier: "OtpViewController") as? OtpViewController else {
                return
            }
            self.navigationController?.pushViewController(controller, animated: true)
                    
        }
    }
    
}
