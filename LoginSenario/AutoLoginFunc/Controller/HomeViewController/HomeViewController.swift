//
//  HomeViewController.swift
//  AutoLoginFunc
//  Created by MUHAMMAD ABDULLAH AL MAMUN on 21/12/2019.
//  Copyright © 2018 MUHAMMAD ABDULLAH AL MAMUN. All rights reserved.


import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(), style: .plain, target: self, action: nil)
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

    @IBAction func onClickLogout(_ sender: Any) {
        //UserDefaults.standard.removeObject(forKey: "email")
        UserDefaults.standard.setValueForLogin(value: nil)
        let vc = storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
        let navVC = UINavigationController(rootViewController: vc!)
        let share = UIApplication.shared.delegate as? AppDelegate
        share?.window?.rootViewController = navVC
        share?.window?.makeKeyAndVisible()
    }
    

}
