//
//  ViewController.swift
//  BMIcalci
//
//  Created by Admin on 11/03/22.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var bmiValue : Float?
    @IBAction func heightSliderPressed(_ sender: UISlider) {
        let height = sender.value
        heightLabel.text = String(format: "%.2f", height) + " M"
    }
    
    @IBAction func weightSliderPressed(_ sender: UISlider) {
        let weight = sender.value
        weightLabel.text = String(format: "%.0f", weight) + " KG"
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let heightValue = heightSlider.value
        let weightValue = weightSlider.value
        bmiValue = weightValue/(heightValue * heightValue)
        
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = bmiValue
        }
    }
}

