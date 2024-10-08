//
//  Validator.swift
//  FieldValidation
//
//  Created by iMac on 16/09/24.
//

import Foundation

public struct Validator {
    public static func validEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Z0-9a-z.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    /// This is sample test 2.0.2
    public static func testPrint() {
        print("Hello World ascsdcds")
    }
    
    public static func testPrint2() {
        print("Hello World")
    }
}
