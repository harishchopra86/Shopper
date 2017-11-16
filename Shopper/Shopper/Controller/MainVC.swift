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
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let calcBtn = UIButton(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.3622471785, blue: 0.3265645778, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        itemTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        resultLbl.isHidden = true
        hoursLbl.isHidden = true

    }

    @objc func calculate() {
        
        if let wageTxt = wageTxt.text , let priceTxt = itemTxt.text {
            
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func btnClearcalculatorTapped(_ sender: Any) {
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        itemTxt.text = ""
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

