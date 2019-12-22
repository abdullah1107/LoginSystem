//  ViewController.swift
//  AutoLoginFunc
//  Created by MUHAMMAD ABDULLAH AL MAMUN on 21/12/2019.
//  Copyright © 2018 MUHAMMAD ABDULLAH AL MAMUN. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var txtPassword: UITextField!
    
    let email = "abc@gmail.com"
    let password = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        navigationController?.isNavigationBarHidden = true
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        navigationController?.isNavigationBarHidden = false
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

    @IBAction func onClickLogin(_ sender: Any) {
        
        if email == txtEmail.text! && password == txtPassword.text! {
            UserDefaults.standard.setValueForLogin(value: true)
            
            let vc = storyboard?.instantiateViewController(withIdentifier: "HomeViewController")
            navigationController?.pushViewController(vc!, animated: true)
        }
        else {
            let alert = UIAlertController(title: "Alert", message: "Email or password is not matching", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    
}

