//
//  RadiusView.swift
//  novo
//
//  Created by Olimpio Junior on 26/01/21.
//

import UIKit

extension UIView{
    

    @discardableResult
    func radius(_ radius: CGFloat) -> UIView{
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = false
        self.clipsToBounds = true

        return self

    }


    @discardableResult
    func shadow(radius: CGFloat, color: UIColor, offset: CGSize, opacity: Float) -> UIView {

        self.layer.shadowRadius = radius
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowOpacity = opacity
        return self

    }


}








