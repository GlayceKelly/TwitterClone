//
//  Utilities.swift
//  TwiterTutorial
//
//  Created by Glayce on 18/07/20.
//  Copyright © 2020 Glayce. All rights reserved.
//

import UIKit

class Utilities {
    
    func inputContainerView(withImage image: UIImage, textField: UITextField) -> UIView {
        let view = UIView()
        let iconImageView = UIImageView()
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        iconImageView.image = image
        view.addSubview(iconImageView)
        iconImageView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, paddingLeft: 8, paddingBottom: 8)
        iconImageView.setDimensions(width: 24, height: 24)
        
        view.addSubview(textField)
        textField.anchor(left: iconImageView.rightAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8, paddingBottom: 8)
        
        let dividerView = UIView()
        dividerView.backgroundColor = .white
        view.addSubview(dividerView)
        dividerView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor,                            paddingLeft: 8, height: 0.75)
        
        return view
    }
    
    func textField(withPlaceholder placeholder: String) -> UITextField {
        let tf = UITextField()
        tf.textColor = .white
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        return tf
    }
    
    func attributedButton(_ firstPart: String, _ secondPart: String) -> UIButton {
        let button = UIButton(type: .system)
        
        let attributedTitle = NSMutableAttributedString(string: firstPart, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white])
        
        attributedTitle.append(NSMutableAttributedString(string: secondPart, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white]))
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        return button
    }
    
}
