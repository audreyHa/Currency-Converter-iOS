//
//  ViewController.swift
//  TipCalculatorStarter
//
//  Created by Chase Wang on 9/19/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var USDView: UIView!
    @IBOutlet weak var USDTitle: UILabel!
    @IBOutlet weak var USDValue: UITextField!
    @IBOutlet weak var CADView: UIView!
    @IBOutlet weak var CADTitle: UILabel!
    @IBOutlet weak var CADValue: UITextField!
    @IBOutlet weak var toCAD: UIButton!
    
    @IBAction func toCADPressed(_ sender: UIButton) {
        guard let usdValue = self.USDValue.text else {
            CADValue.text=("You did not enter a number!")
            return
        }
        var myUSDValue = Double(usdValue)
        guard let myConvertedUSDValue=myUSDValue else{
            CADValue.text=("You did not enter a number!")
            return
        }
        var USDConverted=((myConvertedUSDValue*10000/76).rounded()/100)
        CADValue.text="\(USDConverted)"
    }
    
    @IBOutlet weak var toUSD: UIButton!
    @IBAction func toUSDPressed(_ sender: UIButton) {
        guard let cadValue=self.CADValue.text else{
            USDValue.text=("You did not enter a number!")
            return
        }
        var myCADValue=Double(cadValue)
        guard let myConvertedCADValue=myCADValue else{
            USDValue.text=("You did not enter a number!")
            return
        }
        var CADConverted=((myConvertedCADValue*0.76*100).rounded()/100)
        USDValue.text="\(CADConverted)"
    }
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

