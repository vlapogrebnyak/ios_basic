//
//  GroupTableViewCell.swift
//  VkClient
//
//  Created by Vladimir Pogrebnyak on 08.03.2021.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var imageUrl: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
