//
//  GreetingInteractorOutputProtocol.swift
//  VIPERTestApp
//
//  Created by Юрий Альт on 19.01.2023.
//

import Foundation

protocol GreetingInteractorOutputProtocol: AnyObject {
    func recieveGreetingData(greetingData: GreetingData)
}
