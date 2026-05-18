//
//  MainViewController.swift
//  LopesChallenge
//
//  Created by Caio Mandarino on 17/05/26.
//

import UIKit

class MainViewController: UIViewController {
    
    var nadjaImage: UIImageView!
    var imageNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setNajdaImage()
        setupImageNameLabel()
    }
    
    private func setupImageNameLabel() {
        imageNameLabel = UILabel()
        imageNameLabel.translatesAutoresizingMaskIntoConstraints = false
        imageNameLabel.textColor = .label
        imageNameLabel.text = "Nadia e Eduardo Performando"
        
        view.addSubview(imageNameLabel)
        
        let padding: CGFloat = 16

        NSLayoutConstraint.activate([
            imageNameLabel.topAnchor.constraint(equalTo: nadjaImage.topAnchor),
            imageNameLabel.leadingAnchor.constraint(equalTo: nadjaImage.trailingAnchor, constant: padding),
            imageNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
            
        ])
    }

    private func setNajdaImage() {
        nadjaImage = UIImageView(image: .nadja)
        nadjaImage.translatesAutoresizingMaskIntoConstraints = false
        nadjaImage.contentMode = .scaleAspectFit

        view.addSubview(nadjaImage)

        let aspectRatio = nadjaImage.image!.size.height / nadjaImage.image!.size.width

        NSLayoutConstraint.activate([
            nadjaImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2 / 3),
            nadjaImage.heightAnchor.constraint(equalTo: nadjaImage.widthAnchor, multiplier: aspectRatio),
            nadjaImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            nadjaImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10)
        ])
    }
    
}

