//
//  JsonUtils.swift
//  fustball
//
//  Created by Tung Viet on 24/2/25.
//

import Foundation

class JsonUtils {
    func getJson<MODEL>(filename: String, model: MODEL.Type) -> MODEL? where MODEL: Codable {
        if let path = Bundle.main.path(forResource: filename, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                return try JSONDecoder().decode(model, from: data)
            } catch {
                print("Error Parsing")
            }
        }
        return nil
    }
}
