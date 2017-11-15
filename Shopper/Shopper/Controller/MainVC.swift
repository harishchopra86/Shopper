//
//  ViewController.swift
//  Shopper
//
//  Created by Harish Chopra on 2017-11-15.
//  Copyright © 2017 Harish Chopra. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var itemTxt: CurrencyTextField!
    @IBOutlet weak var wageTxt: CurrencyTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        let calcBtn = UIButton(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.3622471785, blue: 0.3265645778, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        itemTxt.inputAccessoryView = calcBtn
    }

    @objc func calculate() {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

