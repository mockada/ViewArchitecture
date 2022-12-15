//
//  BatataService.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

protocol BatataServiceProtocol {
    func smash(food: String, completion: (String) -> Void)
}

final class BatataService: BatataServiceProtocol {
    func smash(food: String, completion: (String) -> Void) {
        completion("______")
    }
}
