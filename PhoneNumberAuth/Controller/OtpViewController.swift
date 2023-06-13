//
//  OtpViewController.swift
//  PhoneNumberAuth
//
//  Created by Mahmudul Hasan on 13/6/23.
//

import UIKit

class OtpViewController: UIViewController {

    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf3: UITextField!
    @IBOutlet weak var tf4: UITextField!
    @IBOutlet weak var otpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "OTP"
      
    }
    

    @IBAction func otpBtnPressed(_ sender: Any) {
        
    }
    
}
