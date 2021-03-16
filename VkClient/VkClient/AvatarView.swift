//
//  AvatarView.swift
//  VkClient
//
//  Created by Vladimir Pogrebnyak on 16.03.2021.
//

import UIKit

@IBDesignable class AvatarView: UIView {
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var subview: UIView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBInspectable var shadowColor : CGColor = UIColor.black.cgColor {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowOpacity : Float = 1.0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowOffset : CGSize = .zero {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowRadius : CGFloat = 10.0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("AvatarView", owner: self, options: nil)
        
        addSubview(contentView)
        contentView.frame = self.bounds
    }
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        subview.layer.shadowColor = self.shadowColor
        subview.layer.shadowOpacity = self.shadowOpacity
        subview.layer.shadowOffset = self.shadowOffset
        subview.layer.shadowRadius = self.shadowRadius
        
        
        subview.layer.cornerRadius = (rect.width / 2)
        imageView.layer.cornerRadius = (rect.width / 2)
    }
    

}
