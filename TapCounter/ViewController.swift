//
//  ViewController.swift
//  TapCounter
//
//  Created by Curtis Wilcox on 3/18/17.
//  Copyright © 2017 DevFountain LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!

    var counter = 0 {
        didSet {
            counterLabel.text = String(counter)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Reset", style: .plain, target: self, action: #selector(resetButtonTapped))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        counter += 1
    }

    func resetButtonTapped() {
        counter = 0
    }

}

