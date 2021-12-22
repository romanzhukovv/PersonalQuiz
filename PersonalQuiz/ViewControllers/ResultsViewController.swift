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

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        let result = getMostFrequentAnimal(answersChoosen)
        animalLabel.text = "Вы - \(result.rawValue)"
        descriptionLabel.text = "\(result.definition)"
    }
}

extension ResultsViewController {
    private func getMostFrequentAnimal(_ answersChoosen: [Answer]) -> AnimalType {
        var countAnimal: [AnimalType: Int] = [:]
        var mostFrequentAnimal: AnimalType = .cat
        
        for answer in answersChoosen {
            countAnimal[answer.type] = (countAnimal[answer.type] ?? 0) + 1
        }
        
        if let (animal, _) = countAnimal.max(by: { $0.1 < $1.1 }) {
            mostFrequentAnimal = animal
        }
        
        return mostFrequentAnimal
    }
}
