//
//  BaseInfoViewController.swift
//  Very Important project
//
//  Created by 耿雷 on 16/2/25.
//  Copyright © 2016年 coderGL. All rights reserved.
//

import UIKit

class BaseInfoViewController: BaseViewController {

    let colorLayer = CALayer()
    let path = UIBezierPath()
    let animation1 = CAKeyframeAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let startPoint = CGPointMake(170, 200)
        let endPoint = CGPointMake(170, 400)
        let controlPoint1 = CGPointMake(350, 100)
        let controlPoint2 = CGPointMake(300, 350)
        self.layoutView(startPoint, endPoint: endPoint, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
        
        let startPoint1 = CGPointMake(170, 400)
        let endPoint2 = CGPointMake(170, 200)
        let controlPoint4 = CGPointMake(5, 100)
        let controlPoint3 = CGPointMake(55, 350)
        self.layoutView(startPoint1, endPoint: endPoint2, controlPoint1: controlPoint3, controlPoint2: controlPoint4)
        
    }
    
    private func layoutView(startPoint:CGPoint, endPoint:CGPoint, controlPoint1:CGPoint, controlPoint2:CGPoint){
        let layer1 = CALayer()
        layer1.frame = CGRectMake(startPoint.x, startPoint.y, 5, 5)
        layer1.backgroundColor = UIColor.clearColor().CGColor
        
        let layer2 = CALayer()
        layer2.frame = CGRectMake(endPoint.x, endPoint.y, 5, 5)
        layer2.backgroundColor = UIColor.clearColor().CGColor
        
        let layer3 = CALayer()
        layer3.frame = CGRectMake(controlPoint1.x, controlPoint2.y, 5, 5)
        layer3.backgroundColor = UIColor.clearColor().CGColor
        
        let layer4 = CALayer()
        layer4.frame = CGRectMake(controlPoint2.x, controlPoint2.y, 5, 5)
        layer4.backgroundColor = UIColor.clearColor().CGColor
        
        let layer = CAShapeLayer()
        path.moveToPoint(startPoint)
        path.addCurveToPoint(endPoint, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
        
        layer.path = path.CGPath
        layer.fillColor = UIColor.clearColor().CGColor
        layer.strokeColor = UIColor.whiteColor().CGColor
        
        view.layer.addSublayer(layer)
        view.layer.addSublayer(layer4)
        view.layer.addSublayer(layer3)
        view.layer.addSublayer(layer2)
        view.layer.addSublayer(layer1)
        
    }
}
