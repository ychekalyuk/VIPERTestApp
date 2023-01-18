//
//  GreetingConfigurator.swift
//  VIPERTestApp
//
//  Created by Юрий Альт on 19.01.2023.
//

import Foundation

class GreetingConfigurator: GreetingConfiguratorInputProtocol {
    func configure(with view: GreetingViewController) {
        let presenter = GreetingPresenter(view: view)
        let interactor = GreetingInteractor(presenter: presenter)
        
        view.presenter = presenter
        presenter.interactor = interactor
    }
}


