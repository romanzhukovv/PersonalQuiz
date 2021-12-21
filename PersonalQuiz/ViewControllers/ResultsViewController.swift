//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by brubru on 20.12.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet var animalLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var answersChoosen: [Answer]!
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результат в соответсвии с этим живтным

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}

extension ResultsViewController {
    private func defineDominantAnimal(_ answersChoosen: [Answer]) -> AnimalType {
    
    }
}
