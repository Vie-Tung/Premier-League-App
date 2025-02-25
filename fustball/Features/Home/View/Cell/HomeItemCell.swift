//
//  HomeItemCell.swift
//  fustball
//
//  Created by Tung Viet on 24/2/25.
//

import UIKit

class HomeItemCell: UITableViewCell {

    static let identifier = "HomeItemCell"
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func binding(model: TeamModel) {
        avatar.load(fromUrl: model.imageUrl)
        title.text = model.name
        subtitle.text = model.description
    }
    
}
