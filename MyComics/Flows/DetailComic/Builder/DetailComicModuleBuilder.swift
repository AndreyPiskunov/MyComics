//
//  DetailComicsModuleBuilder.swift
//  MyComics
//
//  Created by Andrey Piskunov on 16.07.2023.
//

import UIKit

final class DetailComicModuleBuilder {
    
    static func build() -> UIViewController {
        let presenter = DetailComicPresenter()
        let vc = DetailComicViewController(presenter: presenter)
        presenter.view = vc
        return vc
    }
}
