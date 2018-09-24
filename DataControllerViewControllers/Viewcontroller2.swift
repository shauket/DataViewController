//
//  ViewController.swift
//  DataControllerViewControllers
//
//  Created by Shauket, Muhammad on 2018/07/09.
//  Copyright © 2018 Shauket, Muhammad. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, ViewControllerCResult {
    
    var delegate: ViewControllerCResult?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pushControllerPressed(_ sender: Any) {
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController3") as? ViewController3 {
            if let navigator = navigationController {
                viewController.delegate = self.delegate
//                delegate?.set(data: "Data from B")
                navigator.pushViewController(viewController, animated: true)
            }
        }
    }
    
    func set(data: String) {
        print(data)
    }
    
}

