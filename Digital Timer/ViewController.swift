//
//  ViewController.swift
//  Digital Timer
//
//  Created by D7703_17 on 2018. 4. 10..
//  Copyright © 2018년 박금상. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

      
      @IBOutlet weak var swi: UISwitch!
      @IBOutlet weak var timeLabel: UILabel!
      var myTimer = Timer()
      
      
      
      override func viewDidLoad() {
            
            super.viewDidLoad()
            
            // Do any additional setup after loading the view, typically from a nib.
            
            
            
            swi.setOn(false, animated: true)
            
            
            
            //myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
            
      }
      func updateTime() {
            
            let date = Date()
            
            let formatter = DateFormatter()
            
            formatter.dateFormat = "HH:mm:ss EE"
            
            timeLabel.text = formatter.string(from: date)
            
      }
      
      @IBAction func btsw(_ sender: Any) {
            if swi.isOn == true {
                  
                  
                  
                  myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in self.updateTime()
                        
                        
                        
                  })
                  
            } else {
                  
                  myTimer.invalidate()
                  
            }
            
      }
      
      
      
}


