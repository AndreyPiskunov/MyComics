//
//  DetailComicsViewController.swift
//  MyComics
//
//  Created by Andrey Piskunov on 16.07.2023.
//

import UIKit

class DetailComicsViewController: UIViewController {
    
    // MARK: - Properties
    
    private let presenter: DetailComicsViewOutput
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewIsReady()
    }
    
    // MARK: - Init
    
    init(presenter: DetailComicsViewOutput) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - DetailComicsViewInput -

extension DetailComicsViewController: DetailComicsViewInput {
    func updateView() {
    }
}
