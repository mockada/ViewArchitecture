//
//  BatataViewController.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

import UIKit

protocol BatataViewControllerProtocol: AnyObject {
    func show(preparedDish: String)
    func displayLoading()
    func hideLoading()
}

final class BatataViewController: UIViewController {
    private lazy var submitButton: UIButton = {
        let button: UIButton = .init()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Esmagar batata", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.target(forAction: #selector(didTapSubmitButton), withSender: nil)
        return button
    }()
    
    private let interactor: BatataInteractorProtocol
    
    init(interactor: BatataInteractorProtocol) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(submitButton)
        NSLayoutConstraint.activate([
            submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            submitButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

private extension BatataViewController {
    @objc
    func didTapSubmitButton() {
        interactor.prepare(dish: "Batata")
    }
}

extension BatataViewController: BatataViewControllerProtocol {
    func show(preparedDish: String) {
        let alert = UIAlertController(title: "Batata esmagada", message: preparedDish, preferredStyle: .alert)
        present(alert, animated: true)
    }
    
    func displayLoading() {
        
    }
    
    func hideLoading() {
        
    }
}
