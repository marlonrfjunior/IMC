//
//  ResultViewController.swift
//  IMC
//
//  Created by Marlon Junior🦈⚓️ on 01/09/21.
//

import UIKit

class ResultViewController: UIViewController {
    var imcValue: String?
    @IBOutlet weak var resultNumberLabel: UILabel!
    @IBOutlet weak var adviceResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultNumberLabel.text = imcValue

       
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    


}
