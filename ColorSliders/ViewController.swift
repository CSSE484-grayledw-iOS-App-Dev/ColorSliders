//
//  ViewController.swift
//  ColorSliders
//
//  Created by Derek Grayless on 12/3/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var redValueLabel: UILabel!
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
    
        updateView()
    }

    @IBAction func sliderChanged(_ sender: Any) {
        updateView()
    }
    
    func updateView() {
        let greenValue = greenSlider.value
        let redValue = redSlider.value
        let blueValue = blueSlider.value
        let alphaValue = alphaSlider.value
        
        print("Values \(redValue) \(blueValue) \(greenValue) \(alphaValue) ")
        
        redValueLabel.text = String(format: "%.2f", redValue)
        greenValueLabel.text = String(format: "%.2f", greenValue)
        blueValueLabel.text = String(format: "%.2f", blueValue)
        alphaValueLabel.text = String(format: "%.2f", alphaValue)
        
        colorView.backgroundColor = UIColor(red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: CGFloat(alphaValue))
    }
    
    
}

