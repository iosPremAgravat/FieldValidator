//
//  CustomeFrameWorkVC.swift
//  TempDemo
//
//  Created by imac on 18/09/24.
//
import UIKit
import FieldValidator

class CustomeFrameWorkVC: UIViewController {
    
    
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var btnVerify: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btnVerify.layer.cornerRadius = 5.0
        self.btnVerify.layer.borderWidth = 1
        self.btnVerify.layer.borderColor = UIColor.black.cgColor
    }

    @IBAction func clickVerifyEmailBtn(_ sender: UIButton) {
        if let txt = self.tfEmail.text, txt.count > 0 {
            if Validator.validEmail(txt) {
                UIView.setAnimationsEnabled(false)
                sender.setTitle("Valid", for: .normal)
                self.btnVerify.layer.cornerRadius = 5.0
                sender.layer.borderWidth = 1
                sender.layer.borderColor = UIColor.systemGreen.cgColor
                sender.setTitleColor(.systemGreen, for: .normal)
                UIView.setAnimationsEnabled(true)
            } else {
                UIView.setAnimationsEnabled(false)
                sender.setTitle("Invalid", for: .normal)
                sender.setTitleColor(.red, for: .normal)
                self.btnVerify.layer.cornerRadius = 5.0
                sender.layer.borderWidth = 1
                sender.layer.borderColor = UIColor.red.cgColor
                UIView.setAnimationsEnabled(true)
            }
        }
    }
    
    @IBAction func tfEmailEditingChange(_ sender: UITextField) {
        if (sender.text?.count ?? 0) == 0 {
            UIView.setAnimationsEnabled(false)
            self.btnVerify.setTitle("Verify", for: .normal)
            self.btnVerify.setTitleColor(.black, for: .normal)
            self.btnVerify.layer.cornerRadius = 5.0
            self.btnVerify.layer.borderWidth = 1
            self.btnVerify.layer.borderColor = UIColor.black.cgColor
            UIView.setAnimationsEnabled(true)
        }
    }
}
