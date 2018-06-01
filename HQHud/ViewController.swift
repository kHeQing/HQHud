//
//  ViewController.swift
//  HQHud
//
//  Created by gandijun on 2018/6/1.
//  Copyright © 2018年 HeQing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showHud(_ sender: UIButton) {
        
        view.showHud()
    }
    
    @IBAction func hideHud(_ sender: UIButton) {
        
        view.hideHud()
    }
    
}

