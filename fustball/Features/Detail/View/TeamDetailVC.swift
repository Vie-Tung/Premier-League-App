//
//  TeamDetailVC.swift
//  fustball
//
//  Created by Tung Viet on 25/2/25.
//

import UIKit

class TeamDetailVC: UIViewController {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    var viewModel: TeamDetailViewModel!
    var data: TeamModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }


    private func setupUI() {
        if let data = data {
            avatar.load(fromUrl: data.imageUrl)
            name.text = data.name
            desc.text = data.description
        }
    }

}
