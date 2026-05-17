//
//  MainViewController.swift
//  LopesChallenge
//
//  Created by Caio Mandarino on 17/05/26.
//

import UIKit

class MainViewController: UIViewController {
    
    var nadjaImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setNajdaImage()
    }

    private func setNajdaImage() {
        nadjaImage = UIImageView(image: .nadja)
        nadjaImage.translatesAutoresizingMaskIntoConstraints = false
        nadjaImage.contentMode = .scaleAspectFit
        
        view.addSubview(nadjaImage)
        
        let padding: CGFloat = 16
        
        NSLayoutConstraint.activate([
            nadjaImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2 / 3),
            nadjaImage.heightAnchor.constraint(equalTo: nadjaImage.widthAnchor),
            nadjaImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -padding),
            nadjaImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding)
        ])
    }
    
}

