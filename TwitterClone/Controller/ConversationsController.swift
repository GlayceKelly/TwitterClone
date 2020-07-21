//
//  ConversationsController.swift
//  TwiterTutorial
//
//  Created by Glayce on 17/07/20.
//  Copyright © 2020 Glayce. All rights reserved.
//

import UIKit

class ConversationsController: UIViewController {
    // MARK - Properties
    
    // MARK - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        
        navigationItem.title = "Messages"
    }
}
