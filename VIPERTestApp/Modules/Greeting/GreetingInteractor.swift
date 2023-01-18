//
//  GreetingInteractor.swift
//  VIPERTestApp
//
//  Created by Юрий Альт on 19.01.2023.
//

import Foundation

class GreetingInteractor: GreetingInteractorInputProtocol {
    
    weak var presenter: GreetingInteractorOutputProtocol!
    
    required init(presenter: GreetingInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func provideGreetingData() {
        let person = Person(name: "Tim", surname: "Coock")
        let greetingData = GreetingData(name: person.name, surname: person.surname)
        presenter.recieveGreetingData(greetingData: greetingData)
    }
}
