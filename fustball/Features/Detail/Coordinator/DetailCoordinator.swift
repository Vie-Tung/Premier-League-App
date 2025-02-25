//
//  DetailCoordinator.swift
//  fustball
//
//  Created by Tung Viet on 25/2/25.
//
import Foundation

class DetailCoordinator: BaseCoordinator {
    private var data: TeamModel?
    private var viewModel = TeamDetailViewModel()
    
    init(data: TeamModel) {
        self.data = data
    }
    
    override func start() {
        setupBinding()
        
        let detail = TeamDetailVC()
        detail.viewModel = viewModel
        detail.data = data
        navigationController.present(detail, animated: true)
    }
    
    private func setupBinding() {
        viewModel.viewDidDisappear.subscribe(to: self) { this, _ in
            this.parentCoordinator?.didFinish(coordinator: this)
        }
    }
}
