//
//  AboutCoordinator.swift
//  fustball
//
//  Created by Tung Viet on 25/2/25.
//

import Foundation

class AboutCoordinator: BaseCoordinator {
    private let viewModel = AboutViewModel()
    
    override func start() {
        setupBinding()
        
        let about = AboutVC()
        about.viewModel = viewModel
        navigationController.pushViewController(about, animated: true)
    }
    
    private func setupBinding() {
        viewModel.viewDidDisapear.subscribe(to: self) { this, _ in
            this.parentCoordinator?.didFinish(coordinator: this)
        }
    }
}
