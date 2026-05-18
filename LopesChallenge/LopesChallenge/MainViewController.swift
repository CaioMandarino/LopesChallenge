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
    var loremIpsumLabel: UILabel!
    var imageDateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setNajdaImage()
        setupImageNameLabel()
        setupImageDateLabel()
        setupLoremIpsumLabel()
    }
    
    private func setupImageDateLabel() {
        imageDateLabel = UILabel()
        imageDateLabel.translatesAutoresizingMaskIntoConstraints = false
        imageDateLabel.textColor = .label
        imageDateLabel.text = "01/10/1834"
        
        view.addSubview(imageDateLabel)
        
        let padding: CGFloat = 16

        NSLayoutConstraint.activate([
            imageDateLabel.bottomAnchor.constraint(equalTo: nadjaImage.bottomAnchor),
            imageDateLabel.leadingAnchor.constraint(equalTo: nadjaImage.trailingAnchor, constant: padding),
            imageDateLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            imageDateLabel.heightAnchor.constraint(equalToConstant: 16)
        ])
    }
    
    private func setupLoremIpsumLabel() {
        loremIpsumLabel = UILabel()
        loremIpsumLabel.translatesAutoresizingMaskIntoConstraints = false
        loremIpsumLabel.textColor = .label
        loremIpsumLabel.numberOfLines = 0
        loremIpsumLabel.lineBreakMode = .byTruncatingTail
        loremIpsumLabel.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        
        view.addSubview(loremIpsumLabel)
        
        NSLayoutConstraint.activate([
            loremIpsumLabel.centerYAnchor.constraint(equalTo: nadjaImage.centerYAnchor),
            loremIpsumLabel.leadingAnchor.constraint(equalTo: nadjaImage.trailingAnchor, constant: 4),
            loremIpsumLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            loremIpsumLabel.topAnchor.constraint(equalTo: imageNameLabel.bottomAnchor),

            loremIpsumLabel.bottomAnchor.constraint(lessThanOrEqualTo: imageDateLabel.topAnchor)
        ])
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
            imageNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            imageNameLabel.heightAnchor.constraint(equalToConstant: 16)
        ])
    }

    private func setNajdaImage() {
        nadjaImage = UIImageView(image: .nadja)
        nadjaImage.translatesAutoresizingMaskIntoConstraints = false
        nadjaImage.contentMode = .scaleAspectFit

        view.addSubview(nadjaImage)

        let aspectRatio = nadjaImage.image!.size.height / nadjaImage.image!.size.width

        NSLayoutConstraint.activate([
            nadjaImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2 / 3), // TODO: Mudar para 1 / 6 quando for landscape
            nadjaImage.heightAnchor.constraint(equalTo: nadjaImage.widthAnchor, multiplier: aspectRatio),
            nadjaImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            nadjaImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10)
        ])
    }
    
}

