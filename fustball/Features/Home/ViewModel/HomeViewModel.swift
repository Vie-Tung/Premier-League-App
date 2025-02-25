//
//  HomeViewModel.swift
//  fustball
//
//  Created by Tung Viet on 24/2/25.
//

import Foundation

class HomeViewModel {
    private var repo: DataRepository!
    
    let viewDidDisappear = DelegateView<Void>()
    let homeItemSelected = DelegateView<TeamModel>()
    let aboutSelected = DelegateView<Void>()
    
    init(repository: DataRepository) {
        self.repo = repository
    }
    
    func fetchTeam() -> [TeamModel] {
        return repo.fetchTeams()
    }
}
