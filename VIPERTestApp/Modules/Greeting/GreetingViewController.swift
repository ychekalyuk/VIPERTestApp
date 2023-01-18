//
//  GreetingViewController.swift
//  VIPERTestApp
//
//  Created by Юрий Альт on 19.01.2023.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    var presenter: GreetingViewOutputProtocol!
    
    private let configurator: GreetingConfiguratorInputProtocol = GreetingConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        view.backgroundColor = .lightGray
    }
    
    @IBAction func showGreetingPressed() {
        presenter.didTapShowGreetingButton()
    }
}

extension GreetingViewController: GreetingViewInputProtocol {
    func showGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}
