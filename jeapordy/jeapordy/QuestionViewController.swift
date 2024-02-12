//
//  QuestionViewController.swift
//  jeapordy
//
//  Created by Suchay Seelam on 2/8/24.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    var question : String? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        guard question != nil else{return}
        questionLabel.text = question!
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
