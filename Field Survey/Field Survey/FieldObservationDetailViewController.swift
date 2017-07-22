//
//  FieldObservationDetailViewController.swift
//  Field Survey
//
//  Created by Jamie Flores on 7/21/17.
//  Copyright © 2017 Jamie Flores. All rights reserved.
//

import UIKit

class FieldObservationDetailViewController: UIViewController {
    
    var FieldSurvey: FieldSurvey?
    var dateFormatter = DateFormatter()

    @IBOutlet weak var fieldIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

         self.title = "Observation"
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        fieldIconImageView.image = FieldSurvey?.classification.image
        titleLabel.text = FieldSurvey?.title
        
        if let date = FieldSurvey?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        
        descriptionLabel.text = FieldSurvey?.description
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
