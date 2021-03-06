//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Li JinMa on 14/10/24.
//  Copyright (c) 2014年 Li JinMa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    
    @IBAction func temperatureSliderChanged(sender: UISlider) {
        // TODO: read the current value of the slider and update the temperature displays
        self.updateTemperatureDisplays()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTemperatureDisplays()
    {
        var c = temperatureSlider.value
        var f = (c * 9/5) + 32
        var k = c + 273.15
        
        celsiusLabel.text = String(format: "%.fC", arguments: [c])
        fahrenheitLabel.text = String(format: "%.fF", arguments: [f])
        kelvinLabel.text = String(format: "%.2fK", arguments: [k])
        
    }
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        
//        let screen = UIScreen.mainScreen()
//        
//        titleLabel.frame = CGRect(x: 16, y: 16 + topLayoutGuide.length, width: screen.bounds.width - 16 * 2, height: 21);
//        
//        // Always return the size of the screen in portraits orientation
//        println("screen fixed bounds: \(screen.fixedCoordinateSpace.bounds)")
//        // Since ios8, this is the size of the screen in its current orientation
//        println("screen bounds: \(screen.bounds)")
//        
//        println("top layout guide: \(topLayoutGuide.length)")
//    }
    
    
}

