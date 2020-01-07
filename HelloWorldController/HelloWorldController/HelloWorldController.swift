//
//  HelloWorldController.swift
//  HelloWorldController
//
//  Created by Pin-Chou Liu on 1/6/20.
//  Copyright © 2020 Pin-Chou Liu. All rights reserved.
//

import UIKit

public protocol HelloWorldControllerDelegate: AnyObject {
    func helloWorldControllerDismissed()
}

public class HelloWorldController: UIViewController {

    public weak var delegate: HelloWorldControllerDelegate? = nil

    public convenience init() {
        self.init(nibName: "HelloWorldController", bundle: Bundle.init(for: HelloWorldController.self))
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    public override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        self.delegate?.helloWorldControllerDismissed()
    }

    @IBAction func closeButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
