//
//  ViewController.swift
//  swfit_chpater4
//
//  Created by 해인 on 2023/06/15.
//

import UIKit

class DateViewController: UIViewController {

    let timerSelector : Selector = #selector(DateViewController.updateTime)
    let interval = 1.0
    var count = 0
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timerSelector, userInfo: nil ,repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE요일"
        
        lblPickerTime.text = "선택시간 : "+formatter.string(from: datePickerView.date)
    }
    
    
    @objc func updateTime() {
//        lblCurrentTime.text = String(count)
//        count = count + 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE요일"
        lblCurrentTime.text = "현재시간 : "+formatter.string(from: date as Date)
    }
}

