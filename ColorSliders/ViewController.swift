//
//  ViewController.swift
//  ColorSliders
//
//  Created by Derek Grayless on 12/3/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var redValueLabel: UISlider!
    @IBOutlet weak var blueValueLabel: UILabel!
    @IBOutlet weak var alphaValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Hello world!")
        
        redSlider.value = 0.5
        blueSlider.value = 0.0
        greenSlider.value = 0.0
        alphaSlider.value = 1.0
    }

    @IBAction func sliderChanged(_ sender: Any) {
        print("slider changed!")
    }
    
}

