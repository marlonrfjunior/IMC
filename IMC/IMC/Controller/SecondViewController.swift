//
//  SecondViewController.swift
//  IMC
//
//  Created by Marlon Junior🦈⚓️ on 01/09/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    var imcValue: String = "0.0"
    
    override func viewDidLoad() {
        view.backgroundColor = .green
        super.viewDidLoad()
        let label = UILabel()
        label.text = imcValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
