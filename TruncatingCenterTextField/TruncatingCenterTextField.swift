//
//  TruncatingCenterTextField.swift
//  TruncatingCenterTextField
//
//  Created by RAFAT TOUQIR RAFSUN on 20/3/18.
//  Copyright © 2018 RAFAT TOUQIR RAFSUN. All rights reserved.
//

import UIKit

@IBDesignable
class TruncatingCenterTextField: UITextField {
    
    lazy var paragraphStyle : NSMutableParagraphStyle = {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byTruncatingMiddle // this would make textfield ||somet..ng||
        return paragraphStyle
    }()
    
    override func drawText(in rect: CGRect) {
        guard let text = text,let font = self.font else {
            super.drawText(in: rect)
            return
        }
        
        let mutatedAttributes : [NSAttributedStringKey : Any] = [
            NSAttributedStringKey.font : font,
            NSAttributedStringKey.paragraphStyle : self.paragraphStyle
        ]
        
        //for attributed text
        //let mutatedString = NSMutableAttributedString(string: text, attributes: mutatedAttributes)
        //self.attributedText = mutatedString
        
        //for plain text
        (text as NSString).draw(in: rect, withAttributes: mutatedAttributes)
    }

}
