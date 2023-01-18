//
//  GreetingInteractorInputProtocol.swift
//  VIPERTestApp
//
//  Created by Юрий Альт on 19.01.2023.
//

import Foundation

protocol GreetingInteractorInputProtocol {
    init(presenter: GreetingInteractorOutputProtocol)
    func provideGreetingData()
}
