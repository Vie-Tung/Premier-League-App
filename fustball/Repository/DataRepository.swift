//
//  DataRepository.swift
//  fustball
//
//  Created by Tung Viet on 24/2/25.
//

import Foundation

class DataRepository {
    func fetchTeams() -> [TeamModel] {
        let data = JsonUtils().getJson(filename: "phandao", model: [TeamModel].self)
        return data ?? []
    }
}
