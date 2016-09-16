//
//  ViewController.swift
//  TapCounter01
//
//  Created by Jairo Avalos on 9/13/16.
//  Copyright © 2016 Jairo Avalos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    }

    // MARK: - Outlets
    @IBOutlet weak var countLabel: UILabel!
    
    
    // MARK: - Properties
    var count = 0
    
    
    
    // MARK: - Interactions
    @IBAction func tapButton(_ sender: UIButton) {
        increaseCount()
    }
    
    @IBAction func tapResetButton(_ sender: UIBarButtonItem) {
        count = 0
        countLabel.text = "0"
    }
    
    @IBAction func holdTapButton(_ sender: UILongPressGestureRecognizer) {
        increaseCount()
    }
    
    
    // MARK: - Functions
    func increaseCount() {
        count += 1
        countLabel.text = String(count)
    }
}

