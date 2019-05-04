//
//  CircleChart.swift
//  CircleChart
//
//  Created by 陳劭任 on 2019/5/4.
//  Copyright © 2019 陳劭任. All rights reserved.
//

import UIKit

class CircleChart: UIView {

    init(frame: CGRect, items: [CGFloat]) {
        super.init(frame: frame)
        
        var startAngle = CGFloat.zero

        for item in items {
            
            let endAngle = item * 2 * CGFloat.pi + startAngle
            
            let path = UIBezierPath(arcCenter: self.center, radius: self.bounds.width/2, startAngle: startAngle, endAngle: endAngle, clockwise: true)
                        
            path.addLine(to: self.center)
            
            path.close()
            
            startAngle = endAngle
            
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = path.cgPath
            
            shapeLayer.strokeColor = UIColor.random.cgColor
            shapeLayer.fillColor = shapeLayer.strokeColor
            
            shapeLayer.lineWidth = 1.0
            shapeLayer.lineCap = CAShapeLayerLineCap.round
            
            self.layer.addSublayer(shapeLayer)
        }

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension UIColor {
    /**
     * Returns random color
     * ## Examples:
     * self.backgroundColor = UIColor.random
     */
    static var random: UIColor {
        let r:CGFloat  = .random(in: 0...1)
        let g:CGFloat  = .random(in: 0...1)
        let b:CGFloat  = .random(in: 0...1)
        return UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}
