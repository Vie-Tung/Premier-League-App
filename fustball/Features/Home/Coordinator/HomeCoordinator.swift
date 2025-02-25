//
//  HomeCoordinator.swift
//  fustball
//
//  Created by Tung Viet on 3/2/25.
//

import UIKit

class HomeCoordinator: BaseCoordinator {
    private var viewModel: HomeViewModel!
    
    override func start() {
    
        setupData()
        setupBinding()
        
        let homeVC = HomeVC()
        homeVC.viewModel = viewModel
        self.navigationController = UINavigationController(rootViewController: homeVC)
        self.navigationController.viewControllers = [homeVC]
    }
    
    private func setupBinding() {
        viewModel.homeItemSelected.subscribe(to: self) { this, data in
            this.navigateToDetail(data: data)
        }
        
        viewModel.aboutSelected.subscribe(to: self) { this, _ in
            this.navigateToAbout()
        }
    }
    
    private func setupData() {
        let repository = DataRepository()
        viewModel = HomeViewModel(repository: repository)
    }
    
    private func navigateToDetail(data: TeamModel) {
        let detail = DetailCoordinator(data: data)
        detail.navigationController = navigationController
        start(coordinator: detail)
    }
    
    private func navigateToAbout() {
        let about = AboutCoordinator()
        about.navigationController = navigationController
        start(coordinator: about)
    }
    
}
