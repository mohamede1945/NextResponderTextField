//
//  ViewController.swift
//  NextResponderTextField
//
//  Created by Mohamed Afifi on 06/28/2015.
//  Copyright (c) 06/28/2015 Mohamed Afifi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func submitButtonTapped(sender: AnyObject) {
        let alert = UIAlertController(title: nil, message: "Sign in button tapped", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }

}

