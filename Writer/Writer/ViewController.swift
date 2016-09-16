//
//  ViewController.swift
//  Writer
//
//  Created by Jairo Avalos on 9/15/16.
//  Copyright © 2016 Jairo Avalos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
    }

    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!
}

