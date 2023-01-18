//
//  GreetingPresenter.swift
//  VIPERTestApp
//
//  Created by Юрий Альт on 19.01.2023.
//

import Foundation

struct GreetingData {
    let name: String
    let surname: String
}

class GreetingPresenter: GreetingViewOutputProtocol {
    
    weak var view: GreetingViewInputProtocol!
    
    var interactor: GreetingInteractorInputProtocol!
    
    required init(view: GreetingViewInputProtocol) {
        self.view = view
    }
    
    func didTapShowGreetingButton() {
        interactor.provideGreetingData()
    }
}


extension GreetingPresenter: GreetingInteractorOutputProtocol {
    func recieveGreetingData(greetingData: GreetingData) {
        let greeting = "Hello, \(greetingData.name) \(greetingData.surname)!"
        view.showGreeting(greeting)
    }
    
    
}
