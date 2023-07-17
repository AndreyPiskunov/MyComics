//
//  DetailComicsViewController.swift
//  MyComics
//
//  Created by Andrey Piskunov on 16.07.2023.
//

import UIKit

class DetailComicViewController: UIViewController {
    
    // MARK: - Properties
    
    private let presenter: DetailComicViewOutput
    
    private let comicImageView: AsyncImageView = {
        let comicImageView = AsyncImageView()
        comicImageView.contentMode = .scaleAspectFit
        return comicImageView
    }()
    
    private let titleComicLabel: UILabel = {
        let titleComicLabel = UILabel()
        titleComicLabel.textColor = .white
        titleComicLabel.font = .systemFont(ofSize: 23, weight: .bold)
        titleComicLabel.textAlignment = .center
        return titleComicLabel
    }()
    
    private let descriptionComicLabel: UILabel = {
        let descriptionComicLabel = UILabel()
        descriptionComicLabel.textColor = .white
        descriptionComicLabel.textAlignment = .center
        descriptionComicLabel.font = .systemFont(ofSize: 17, weight: .light)
        descriptionComicLabel.numberOfLines = 10
        return descriptionComicLabel
    }()
    
    // MARK: - Init
    
    init(presenter: DetailComicViewOutput) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        presenter.viewIsReady()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    
    private func configureUI() {
        navigationItem.largeTitleDisplayMode = .never
        view.backgroundColor = .commonBackground
        view.addSubview(comicImageView)
        view.addSubview(titleComicLabel)
        view.addSubview(descriptionComicLabel)
        setupConstraints()
    }
    
    private func setupConstraints() {
        let safeArea = self.view.safeAreaLayoutGuide
        
        comicImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            comicImageView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            comicImageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            comicImageView.rightAnchor.constraint(equalTo: view.rightAnchor),
            comicImageView.heightAnchor.constraint(equalTo: comicImageView.widthAnchor)
        ])
        
        titleComicLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleComicLabel.topAnchor.constraint(equalTo: comicImageView.bottomAnchor, constant: 20),
            titleComicLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleComicLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        descriptionComicLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriptionComicLabel.topAnchor.constraint(equalTo: titleComicLabel.bottomAnchor, constant: 20),
            descriptionComicLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descriptionComicLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}

// MARK: - DetailComicViewInput -

extension DetailComicViewController: DetailComicViewInput {
    func updateView() {
    }
}
