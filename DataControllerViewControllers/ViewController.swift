//
//  ViewController.swift
//  DataControllerViewControllers
//
//  Created by Shauket, Muhammad on 2018/07/09.
//  Copyright © 2018 Shauket, Muhammad. All rights reserved.
//

import UIKit


/// ViewController
class ViewController: UIViewController, ViewControllerCResult, UITableViewDelegate, UITableViewDataSource {
    
    var delegate: ViewControllerCResult?
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    override var prefersStatusBarHidden: Bool {
        return false
    }
    @objc func handleLogOutButton() {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pushControllerPressed(_ sender: Any) {
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController2") as? ViewController2 {
            if let navigator = navigationController {
                viewController.delegate = self
                navigator.pushViewController(viewController, animated: true)
            }
        }
    }
    
    func set(data: String) {
        
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TestTableviewCell
        cell.textview.text = "shauket you are nice person please help us to manage. we have to pay our utility bills thanks very much"
        return cell

    }
}

class TestTableviewCell: UITableViewCell {
    @IBOutlet weak var textview: UITextView!
}

