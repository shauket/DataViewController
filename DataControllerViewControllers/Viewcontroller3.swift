//
//  ViewController.swift
//  DataControllerViewControllers
//
//  Created by Shauket, Muhammad on 2018/07/09.
//  Copyright © 2018 Shauket, Muhammad. All rights reserved.
//

import UIKit

protocol ViewControllerCResult {
    func set(data: String)
}

class ViewController3: UIViewController, ViewControllerCResult {
    
    var delegate: ViewControllerCResult?

    func set(data: String) {
        print(data)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setData() {
        
    }
    
    @IBAction func popControllerPressed(_ sender: Any) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: ViewController.self) {
                delegate?.set(data: "data from C")
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }

    }
    
    
}

