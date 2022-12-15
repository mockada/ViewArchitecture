//
//  BatataViewController.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

import UIKit

protocol BatataViewControllerProtocol: AnyObject {
    
}

final class BatataViewController: UIViewController {
    private let interactor: BatataInteractorProtocol
    
    init(interactor: BatataInteractorProtocol) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
}

extension BatataViewController: BatataViewControllerProtocol {
    
}
