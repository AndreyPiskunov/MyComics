//
//  DetailComicsModuleBuilder.swift
//  MyComics
//
//  Created by Andrey Piskunov on 16.07.2023.
//

import UIKit

final class DetailComicsModuleBuilder {
    
    static func build() -> UIViewController {
        let presenter = DetailComicsPresenter()
        let vc = DetailComicsViewController(presenter: presenter)
        presenter.view = vc
        return vc
    }
}
