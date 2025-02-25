//
//  AboutVC.swift
//  fustball
//
//  Created by Tung Viet on 25/2/25.
//

import UIKit

class AboutVC: UIViewController {
    
    var viewModel: AboutViewModel!
    
    @IBOutlet weak var avatar: CircleImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileEmail: UILabel!
    @IBOutlet weak var profileGithub: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    private func setupUI() {
        navigationItem.title = "About Me"
        profileName.text = viewModel.name
        profileEmail.text = viewModel.email
        profileGithub.text = viewModel.github
    }
}
