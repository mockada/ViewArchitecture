//
//  CenouraService.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

protocol CenouraServiceProtocol {
    func cut(food: String, completion: (String) -> Void)
}

final class CenouraService: CenouraServiceProtocol {
    func cut(food: String, completion: (String) -> Void) {
        completion("C E N O U R A")
    }
}
