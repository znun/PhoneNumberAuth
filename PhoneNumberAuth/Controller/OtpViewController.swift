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
        
        self.tf1.delegate = self
        self.tf2.delegate = self
        self.tf3.delegate = self
        self.tf4.delegate = self
        
        self.tf1.addTarget(self, action: #selector(self.changeCharecter), for: .editingChanged)
        self.tf2.addTarget(self, action: #selector(self.changeCharecter), for: .editingChanged)
        self.tf3.addTarget(self, action: #selector(self.changeCharecter), for: .editingChanged)
        self.tf4.addTarget(self, action: #selector(self.changeCharecter), for: .editingChanged)
      
    }
    
    @objc func changeCharecter(textField: UITextField) {
        if textField.text?.utf8.count == 1 {
            switch textField{
            case tf1:
                tf2.becomeFirstResponder()
            case tf2:
                tf3.becomeFirstResponder()
            case tf3:
                tf4.becomeFirstResponder()
            case tf4:
                print("OTP: \(tf1.text!) \(tf2.text!) \(tf3.text!) \(tf4.text!)")
            default:
                break
            }
        } else if textField.text!.isEmpty {
            switch textField{
            case tf4:
                tf3.becomeFirstResponder()
            case tf3:
                tf2.becomeFirstResponder()
            case tf2:
                tf1.becomeFirstResponder()
            default:
                break
            }
        }
    }

    
    

    @IBAction func otpBtnPressed(_ sender: Any) {
        
    }
    
}

extension OtpViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField.text?.utf16.count == 1 && !string.isEmpty {
            return false
        } else {
            return true
        }
    }
}
