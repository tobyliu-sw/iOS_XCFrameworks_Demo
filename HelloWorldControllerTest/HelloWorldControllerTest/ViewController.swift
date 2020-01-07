//
//  ViewController.swift
//  HelloWorldControllerTest
//
//  Created by Pin-Chou Liu on 1/6/20.
//  Copyright © 2020 Pin-Chou Liu. All rights reserved.
//

import UIKit
import HelloWorldController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func helloWorldButtonPressed(_ sender: UIButton) {
        let helloWorldVC = HelloWorldController()
        helloWorldVC.modalPresentationStyle = .fullScreen
        helloWorldVC.modalTransitionStyle = .flipHorizontal
        helloWorldVC.delegate = self
        self.present(helloWorldVC, animated: true, completion: nil)
    }

}

extension ViewController: HelloWorldControllerDelegate {
    func helloWorldControllerDismissed() {
        print("Hello World Controller Dismissed !")
    }
}
