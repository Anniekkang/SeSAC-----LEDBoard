//
//  ViewController.swift
//  LEDPlate
//
//  Created by 나리강 on 2022/07/08.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var sendTextField: UITextField!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()

    }
    
    func setUp(){
        sendTextField.attributedPlaceholder = NSAttributedString(string: "내용을 입력하시오", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        sendTextField.placeholder = "내용을 입력하시오"
        sendTextField.backgroundColor = .gray
        sendTextField.textAlignment = .left
        sendTextField.keyboardType = .namePhonePad
        
        
        buttonSetup(button: sendButton, title: "SEND", type: .normal, titleColor : .black,colorType: .normal)
        
        buttonSetup(button: sendButton, title: "SEND fast!", type: .highlighted, titleColor: .red, colorType: .highlighted)
        buttonSetup(button: secondButton, title: "COLOR", type: .normal, titleColor: .black, colorType: .normal)
        buttonSetup(button: secondButton, title: "choose color!", type: .highlighted, titleColor: .red, colorType: .highlighted)
    }
    
    
    
    func buttonSetup(button: UIButton, title : String, type : UIControl.State, titleColor :  UIColor, colorType : UIControl.State ){
        
        button.setTitle(title, for: type)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 3
        button.layer.cornerRadius = 5
        button.setTitleColor(titleColor, for: colorType)
        button.backgroundColor = .yellow
        button.subtitleLabel?.font = .systemFont(ofSize: 20, weight: .heavy)
//button font size weight ???
    }
    
   
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
    }
    
}
