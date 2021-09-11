//
//  ViewController.swift
//  IMC
//
//  Created by Marlon Junior🦈⚓️ on 28/08/21.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var imc: String = "0.0"
    var calculator = CalculatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSlideChanged(_ sender: UISlider) {
        heightLabel.text = calculator.getHeightText(value: sender.value)
        
    }
    @IBAction func weightSlideChanged(_ sender: UISlider) {
        weightLabel.text = calculator.getWeightText(value: sender.value)
    }
    
    @IBAction func CalculatePressed(_ sender: UIButton) {
        calculator.generateIMC(height: heightSlider.value, weight: weightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.imc = calculator.getIMC()
        }
    }
}

