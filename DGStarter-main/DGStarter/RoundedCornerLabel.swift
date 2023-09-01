//
//  RoundedCornerLabel.swift
//  DGStarter
//
//  Created by Chris Rodriguez on 8/30/23.
//

import UIKit

@IBDesignable

class RoundedCornerLabel: UILabel {

    // if cornerRadius variable is set/changed, change the corner radius of the UIView
      @IBInspectable var cornerRadius: CGFloat = 0 {
          didSet {
              layer.cornerRadius = cornerRadius
              layer.masksToBounds = cornerRadius > 0
              
              
          }
      }
    // The width of the label
    override func awakeFromNib() {
            super.awakeFromNib()

            // Set the width of the label
            widthAnchor.constraint(equalToConstant: 600).isActive = true
        }
}
