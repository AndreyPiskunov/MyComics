//
//  DetailComicsPresenter.swift
//  MyComics
//
//  Created by Andrey Piskunov on 16.07.2023.
//

import Foundation

final class DetailComicsPresenter {
    
    // MARK: - Properties
    
    weak var view: DetailComicsViewInput?
    
}

// MARK: - DetailComicsViewOutput -

extension DetailComicsPresenter: DetailComicsViewOutput {
    func viewIsReady() {
    }
}
