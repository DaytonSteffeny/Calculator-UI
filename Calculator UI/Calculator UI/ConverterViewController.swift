//
//  ConverterViewController.swift
//  Calculator UI
//
//  Created by Dayton Steffeny on 4/13/18.
//  Copyright © 2018 Dayton Steffeny. All rights reserved.
//

import CoreData
import UIKit
import Foundation


class ConverterViewController: UIViewController{

  var input = ""
  var output = ""
  var pick:[String] = ["fahrenheit to celcius", "celcius to fahrenheit", "miles to kilometers", "kilometers to miles"]
  var choice: Int = 0
    var temp = int 0
    
    
    @IBOutlet weak var outputDisplay: UITextField!
    
    @IBOutlet weak var inputDisplay: UITextField!
    
    @IBOutlet weak var ibaction: UIButton!
    

    @IBAction func pickConversion( sender: Any) {
        let message = UIAlertController
    }
    
    @IBOutlet weak var choiceConversion: UIButton!{
        let alert = UIAlertController(title: nil, message: "Choose Converter", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: pick[0], style: UIAlertActionStyle.default, handler: {
            (alertAction)->Void in
            self.choice = 0
            self.temp()
        }))
        alert.addAction(UIAlertAction(title: pick[1], style: UIAlertActionStyle.default, handler: {
            (alertAction)->Void in
            self.choice = 1
            self.temp()
        }))
        alert.addAction(UIAlertAction(title: pick[2], style: UIAlertActionStyle.default, handler: {
            (alertAction)->Void in
            self.choice = 2
            self.temp()
        }))
        alert.addAction(UIAlertAction(title: pick[3], style: UIAlertActionStyle.default, handler: {
            (alertAction)->Void in
            self.choice = 3
            self.temp()
        }))
        self.present(alert, animated: true, completion: nil)
    }
    }
    
    
 func converterText(){
    
        switch  {
        case 0:
    convertMilesToKilometers(miles: Double) -> Double {
    return miles * 1.60934
}
        case 1:
func convertKilometersToMiles(kilo: Double) -> Double{
    return kilo * 1000/1609.344
}
        case 2:
func convertCelsiusToFahrenheit(temperature: Double) -> Double {
    let fahrenheitTemperature = temperature * 9 / 5 + 32
    return fahrenheitTemperature
}
        case 3:
func convertFahrenheitToCelsius(tempInF: Int) ->Int {
    let celsius = (tempInF - 32) * (5/9)
    return celsius as Int
            }
}
}
