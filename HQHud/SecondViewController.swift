//
//  SecondViewController.swift
//  HQHud
//
//  Created by gandijun on 2018/6/1.
//  Copyright © 2018年 HeQing. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func showHudCoveredWindow(_ sender: UIButton) {
        
        Hud_Window?.showHud(isCovered: true)
        
        // 5秒消失
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            Hud_Window?.hideHud()
        }
    }
    
    @IBAction func showHudCoveredView(_ sender: UIButton) {
        
        view.showHud(isCovered: true)
    }
    
}
