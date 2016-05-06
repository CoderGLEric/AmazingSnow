//
//  Menultem.swift
//  Very Important project
//
//  Created by 耿雷 on 16/2/25.
//  Copyright © 2016年 coderGL. All rights reserved.
//

import UIKit

let meuColors = [
    UIColor(red: 00/255, green: 41/255,  blue: 82/255,   alpha: 1.0),
    UIColor(red: 11/255,  green: 0x8D/255,  blue: 0xF0/255,  alpha: 1.0),
    UIColor(red: 95/255, green: 15/255, blue: 56/255,   alpha: 1.0),
    UIColor(red: 0xFF/255,  green: 0x4B/255, blue: 68/255,  alpha: 1.0),
    UIColor(red: 207/255, green: 34/255,  blue: 156/255, alpha: 1.0),
    UIColor(red: 14/255,  green: 88/255,  blue: 149/255, alpha: 1.0),
    UIColor(red: 15/255,  green: 193/255, blue: 231/255, alpha: 1.0),
    UIColor(red: 43/255,  green: 0xA3/255, blue: 67/255, alpha: 1.0),
    UIColor(red: 0x1C/255,  green: 0x0C/255, blue: 0x2A/255, alpha: 1.0)
]

let imgs = [
    UIImage(named: "xh"),
    UIImage(named: "work"),
    UIImage(named: "project"),
    UIImage(named: "personal"),
    UIImage(named: "skills"),
]

enum ResumeInfomation:String{
    
    case BaseInfo = "基本资料"
    case Work = "工作经历"
    case Project = "职业意向"
    case Personal = "个人简介"
    case Skills = "教育经历"
}

class Menultem {
    let title : String
    let symbol : UIImage
    let color : UIColor
    
    init (symbol: UIImage, color: UIColor, title : String){
        self.symbol = symbol
        self.title = title
        self.color = color
    }
    
    static var sharedItems:[Menultem]{
        var items = [Menultem]()
        items.append(Menultem(symbol: imgs[0]!, color: meuColors[0], title:ResumeInfomation.BaseInfo.rawValue))
        items.append(Menultem(symbol: imgs[1]!, color: meuColors[1], title: ResumeInfomation.Work.rawValue))
        items.append(Menultem(symbol: imgs[2]!, color: meuColors[2], title: ResumeInfomation.Project.rawValue))
        items.append(Menultem(symbol: imgs[3]!, color: meuColors[3], title: ResumeInfomation.Personal.rawValue))
        items.append(Menultem(symbol: imgs[4]!, color: meuColors[4], title: ResumeInfomation.Skills.rawValue))
        return items
    }
}











