//
//  ViewController.swift
//  MyAlert
//
//  Created by Đàm Thế on 4/29/19.
//  Copyright © 2019 NA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnAlert: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btnAlert.backgroundColor = UIColor.green
        self.btnAlert.layer.borderColor = UIColor.red.cgColor
        self.btnAlert.layer.borderWidth = 2
        self.btnAlert.tintColor = UIColor.white
        self.btnAlert.layer.cornerRadius = 5
        self.btnAlert.titleEdgeInsets = UIEdgeInsetsMake(2, 5, 2, 5)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnOnClick(_ sender: Any) {
        let alert:UIAlertController = UIAlertController(title: "Login", message: "Login to System", preferredStyle: .alert)
        let btnLogin:UIAlertAction = UIAlertAction(title: "Login", style: .default) { (abcLogin) in
            
            if alert.textFields![0].text == "admin" && alert.textFields![1].text == "123"{
                self.showMessage(blResult: true)
            }
            else{
                self.showMessage(blResult: false)
            }
        }
        let btnCancel:UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addTextField { (txtUsername) in
            txtUsername.placeholder = "👤 Username"
            txtUsername.textColor = UIColor.red
        }
        alert.addTextField { (txtPassword) in
            txtPassword.placeholder = "🗝 Password"
            txtPassword.isSecureTextEntry = true
            txtPassword.textColor = UIColor.red
//            txtPassword.layoutMargins = UIEdgeInsetsMake(10, 0, 0, 0)
        }
        alert.addAction(btnLogin)
        alert.addAction(btnCancel)
        present(alert, animated: true, completion: nil)
    }
    
    private func showMessage(blResult:Bool = false){
        let alert:UIAlertController = UIAlertController(title: "Login Result", message: blResult ? "Login Success" : "Login Fail", preferredStyle: .alert)
        let btnCancel:UIAlertAction = UIAlertAction(title: "Close", style: .cancel, handler: nil)
        alert.addAction(btnCancel)
        present(alert, animated: true, completion: nil)
    }

}

