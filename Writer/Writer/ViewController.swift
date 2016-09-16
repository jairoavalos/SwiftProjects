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
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.detectIfSettingsChanged), name: UserDefaults.didChangeNotification, object: nil)
    }

    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!
    
    let userSettings = UserDefaults.standard
    
    // MARK: - Functions
    func detectIfSettingsChanged() {
        
        // if night mode toggle is on
        // apply night theme
        // else restore default theme
        if userSettings.bool(forKey: "night_mode") {
            view.backgroundColor = UIColor.black
            UIApplication.shared.statusBarStyle = .lightContent
            textView.textColor = UIColor.white
            textView.keyboardAppearance = .dark
        }
        else {
            view.backgroundColor = UIColor.white
            UIApplication.shared.statusBarStyle = .default
            textView.textColor = UIColor.black
            textView.keyboardAppearance = .default
        }
    }
}

