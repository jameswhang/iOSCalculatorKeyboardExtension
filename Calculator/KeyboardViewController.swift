//
//  KeyboardViewController.swift
//  Calculator
//
//  Created by jameswhang on 11/18/16.
//  Copyright © 2016 jameswhang. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    var calculatorView: UIView!

    @IBOutlet var nextKeyboardButton: UIButton!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
        
        
    }
    func loadInterface() {
        // load nib file
        var calculatorNib = UINib(nibName: "Calculator", bundle: nil)
        
        // instantiate the view
        calculatorView = calculatorNib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        // add the interface to main view
        view.addSubview(calculatorView)
        
        // copy background color
        view.backgroundColor = calculatorView.backgroundColor
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
        
        var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
            textColor = UIColor.white
        } else {
            textColor = UIColor.black
        }
        self.nextKeyboardButton.setTitleColor(textColor, for: [])
    }

}
