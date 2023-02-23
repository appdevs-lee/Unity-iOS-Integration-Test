//
//  ViewController.swift
//  IntegrationTest
//
//  Created by Awesomepia on 2023/02/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapGoUnityButton(_ sender: UIButton) {
        UnityManager.shared.launchUnity()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            UnityManager.shared.closeUnity()
        }
    }
}

