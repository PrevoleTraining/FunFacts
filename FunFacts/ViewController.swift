//
//  ViewController.swift
//  FunFacts
//
//  Created by lprevost on 05.12.17.
//  Copyright © 2017 prevole.ch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactProvider()
    
    let backgroundColorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        view.backgroundColor = backgroundColorProvider.randomColor()
        funFactButton.tintColor = view.backgroundColor
    }
}
