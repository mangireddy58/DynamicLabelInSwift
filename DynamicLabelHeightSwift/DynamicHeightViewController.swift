//
//  DynamicHeightViewController.swift
//  DynamicLabelHeightSwift
//
//  Created by Rushikesh Kulkarni on 21/08/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

import UIKit

class DynamicHeightViewController: UIViewController {
    @IBOutlet weak var dynamicLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let str:String = "weiyuryeiwu cdhskjdhkd uhewriwhqidi ihdiuwediuhewi hdiuehiuhdweui weiyuryeiwu cdhskjdhkd uhewriwhqidi ihdiuwediuhewi hdiuehiuhdweui weiyuryeiwu cdhskjdhkd uhewriwhqidi ihdiuwediuhewi hdiuehiuhdweui weiyuryeiwu cdhskjdhkd uhewriwhqidi ihdiuwediuhewi hdiuehiuhdweui"
        self.dynamicLabel.text = String(format: "%@", str)
        let maximumLabelSize = CGSize(width:self.dynamicLabel.frame.size.width, height:CGFloat(Float.greatestFiniteMagnitude))
        let textRect = str.boundingRect(with:maximumLabelSize, options: [.usesLineFragmentOrigin], attributes: [NSFontAttributeName: self.dynamicLabel.font], context: nil)
        self.dynamicLabel.numberOfLines = 0
        var newFrame = self.dynamicLabel.frame
        newFrame.size.height = textRect.size.height
        self.dynamicLabel.frame = newFrame
        self.dynamicLabel .sizeToFit()
        
    }


}
