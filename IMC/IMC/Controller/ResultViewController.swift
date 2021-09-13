//
//  ResultViewController.swift
//  IMC
//
//  Created by Marlon Junior🦈⚓️ on 01/09/21.
//

import UIKit

class ResultViewController: UIViewController {
    var imc: IMC?
    @IBOutlet weak var resultNumberLabel: UILabel!
    @IBOutlet weak var adviceResultLabel: UILabel!
    @IBOutlet weak var backgroundPage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultNumberLabel.text = imc?.getValue()
        adviceResultLabel.text = imc?.getAdvice()
        view.backgroundColor = imc?.getColor()
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    


}
