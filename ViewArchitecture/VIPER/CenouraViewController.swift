//
//  CenouraViewController.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

import UIKit

protocol CenouraViewControllerOutputProtocol: AnyObject {
    func show(preparedDish: String)
    func displayLoading()
    func hideLoading()
}

final class CenouraViewController: UIViewController {
    private lazy var submitButton: UIButton = {
        let button: UIButton = .init()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cortar cenoura", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.target(forAction: #selector(didTapSubmitButton), withSender: nil)
        return button
    }()
    
    private let presenter: CenouraPresenterInputProtocol
    
    init(presenter: CenouraPresenterInputProtocol) {
        self.presenter = presenter
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

private extension CenouraViewController {
    @objc
    func didTapSubmitButton() {
        presenter.prepare(dish: "Cenoura")
    }
}

extension CenouraViewController: CenouraViewControllerOutputProtocol {
    func show(preparedDish: String) {
        let alert = UIAlertController(title: "Cenoura cortada", message: preparedDish, preferredStyle: .alert)
        present(alert, animated: true)
    }
    
    func displayLoading() {
        
    }
    
    func hideLoading() {
        
    }
}
