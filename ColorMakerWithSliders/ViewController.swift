//
//  ViewController.swift
//  ColorMakerWithSliders
//
//  Created by Jimmy Brown on 4/9/16.
//  Copyright © 2016 Jimmy Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redText: UILabel!
    @IBOutlet weak var greenText: UILabel!
    @IBOutlet weak var blueText: UILabel!
    
    @IBOutlet weak var colorView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickColor()
    }
    
    @IBAction func pickColor() {
        redText.text = String(Int(redSlider.value))
        greenText.text = String(Int(greenSlider.value))
        blueText.text = String(Int(blueSlider.value))
        
        let r: CGFloat = CGFloat(redSlider.value/255)
        let g: CGFloat = CGFloat(greenSlider.value/255)
        let b: CGFloat = CGFloat(blueSlider.value/255)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }

    }

