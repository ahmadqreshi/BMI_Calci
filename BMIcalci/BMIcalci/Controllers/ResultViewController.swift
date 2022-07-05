//
//  ResultViewController.swift
//  BMIcalci
//
//  Created by Admin on 12/03/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var adviceMsg: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    var bmi : Float?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if bmi! < 18.5{
            bgImage.image = UIImage(named: "bluebg")
            bmiLabel.text = "Your BMI is : " + String(format: "%.2f", bmi!)
            adviceMsg.text = "Eat more meals!"
        }else if bmi! < 24.9{
            bgImage.image = UIImage(named: "bluebg")
            bmiLabel.text = "Your BMI is : " + String(format: "%.2f", bmi!)
            adviceMsg.text = "You are fit!"
        }else{
            bgImage.image = UIImage(named: "redbg")
            bmiLabel.text = "Your BMI is : " + String(format: "%.2f", bmi!)
            adviceMsg.text = "Go to the Gym bro!!"
        }
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
