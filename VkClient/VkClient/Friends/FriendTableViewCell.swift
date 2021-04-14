//
//  FriendTableViewCell.swift
//  VkClient
//
//  Created by Vladimir Pogrebnyak on 07.03.2021.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet weak var photo: AvatarView!
    
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

