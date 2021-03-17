//
//  LikeControl.swift
//  VkClient
//
//  Created by Vladimir Pogrebnyak on 16.03.2021.
//

import UIKit

class LikeControl: UIControl {
    private var likeButton : UIButton!
    private var likeCounterLabel : UILabel!
    
    private var stackViewContainer : UIStackView!
    
    private var _state : Bool = false {
        didSet {
            self.updateButtonState()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
        
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupView()
    }
    
    private func setupView() {
//        self.backgroundColor = .clear

        likeCounterLabel = UILabel()
        likeCounterLabel.text = "0"
        likeButton = UIButton()
        let likeImage = UIImage(named: "unlikedAsset")
        likeButton.setImage(likeImage , for: .normal)
        likeButton.addTarget(self, action: #selector(likeClicked), for: .touchUpInside)
        
        stackViewContainer = UIStackView(arrangedSubviews: [self.likeCounterLabel, self.likeButton])

        stackViewContainer.axis = .horizontal
        stackViewContainer.alignment = .center
        stackViewContainer.distribution = .fillEqually
        
        self.addSubview(stackViewContainer)

    }
    
    func updateButtonState() {
        if _state {
            let likeImage = UIImage(named: "likedAsset")
            likeButton.setImage(likeImage , for: .normal)
            likeCounterLabel.text = "1"
        }
        else {
            
            let likeImage = UIImage(named: "unlikedAsset")
            likeButton.setImage(likeImage , for: .normal)
            likeCounterLabel.text = "0"
        }
    }
    
    @objc private func likeClicked() {
        self._state = !self._state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        stackViewContainer.frame = bounds
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
