//
//  ViewController.swift
//  CircleChart
//
//  Created by 陳劭任 on 2019/5/4.
//  Copyright © 2019 陳劭任. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var chartView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let circleChart = CircleChart(frame: self.chartView.bounds, items: [0.3,0.2,0.1,0.3,0.1])
        
        self.chartView.addSubview(circleChart)
        
    }
    
}

