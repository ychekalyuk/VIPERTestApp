//
//  GreetingViewOutputProtocol.swift
//  VIPERTestApp
//
//  Created by Юрий Альт on 19.01.2023.
//

import Foundation

protocol GreetingViewOutputProtocol {
    init(view: GreetingViewInputProtocol)
    func didTapShowGreetingButton()
}
