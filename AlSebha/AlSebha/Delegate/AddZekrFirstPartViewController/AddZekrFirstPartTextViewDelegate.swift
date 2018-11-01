//
//  AddZekrFirstPartTextViewDelegate.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 10/31/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import Foundation
import UIKit

extension AddZekrFirstPartViewController: UITextViewDelegate {
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        return true
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Please enter the desired zekr." ||
            textView.text == "من فضلك قم بكتابة الذكر الذي تريد اضافته" {
            textView.text = ""
            textView.textColor = UIColor.black
        }
    }
    
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        if zekrNameTextView.text == "" {
            return false
        } else {
            return true
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text == "" {
            if textView.textAlignment == .right {
                textView.text = "من فضلك قم بكتابة الذكر الذي تريد اضافته"
                textView.textColor = UIColor.lightGray
                zekrName = ""
            } else if textView.textAlignment == .left {
                textView.text = "Please enter the desired zekr."
                textView.textColor = UIColor.lightGray
                zekrName = ""
            }
        } else if textView.text != "" || textView.text != nil {
            zekrName = textView.text
            textView.resignFirstResponder()
            nextButtonBottomConstraint.constant = 0.0
            print(zekrName)
        }
    }
}
