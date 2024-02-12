//
//  ViewController.swift
//  jeapordy
//
//  Created by Suchay Seelam on 2/6/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var categoryLabels: [UILabel]!
    
    
    @IBOutlet var cat1Buttons: [UIButton]!
    
    @IBOutlet var cat2Buttons: [UIButton]!
    
    @IBOutlet var cat3Buttons: [UIButton]!

    @IBOutlet var cat4Buttons: [UIButton]!

    @IBOutlet var cat5Buttons: [UIButton]!

    var categories : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        categories = Trivia.getCategories()
        for category in categoryLabels {
            category.text = self.categories.remove(at: Int.random(in: 0...categories.count - 1))
        }
        categories = Trivia.getCategories()
    }
    
    
    @IBAction func questionPresssed(_ sender: UIButton) {
        performSegue(withIdentifier: "goQuestion", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else{return}
        guard let vc = segue.destination as? QuestionViewController else{return}
        switch sender.tag {
        case 1...5:
            vc.question = Trivia.getQuestions(category: categoryLabels[0].text!)?.randomElement()!.q
        case 6...10:
            vc.question = Trivia.getQuestions(category: categoryLabels[1].text!)?.randomElement()!.q
        case 11...15:
            vc.question = Trivia.getQuestions(category: categoryLabels[2].text!)?.randomElement()!.q
        default:
            vc.question = Trivia.getQuestions(category: categoryLabels[3].text!)?.randomElement()!.q
        }
    }
}

