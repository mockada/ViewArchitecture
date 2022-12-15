//
//  CenouraViewController.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

import UIKit

protocol CenouraViewControllerOutputProtocol: AnyObject {
    
}

final class CenouraViewController: UIViewController {
    private let presenter: CenouraPresenterInputProtocol
    
    init(presenter: CenouraPresenterInputProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
}

extension CenouraViewController: CenouraViewControllerOutputProtocol {
    
}
