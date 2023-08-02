//
//  ViewController.swift
//  swift_chapter9_PageControl_mission
//
//  Created by 해인 on 2023/08/02.
//

import UIKit

var number = [1,2,3,4,5,6,7,8,9,10]

class ViewController: UIViewController {

    @IBOutlet var count: UILabel!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = number.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.black
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        count.text = String(number[0])
    }


    @IBAction func countChange(_ sender: UIPageControl) {
        
        count.text = String(number[pageControl.currentPage])
    }
}

