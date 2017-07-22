//
//  FieldObservationViewController.swift
//  Field Survey
//
//  Created by Jamie Flores on 7/21/17.
//  Copyright © 2017 Jamie Flores. All rights reserved.
//

import UIKit

class FieldObservationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var FieldSurveyTableView: Field!
    
    let FieldSurveys = fieldObservationsJSONLoader.load(fileName: "field_observations")
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Field Survey"
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FieldSurveys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FieldObservationCell", for: indexPath)
        
        if let cell = cell as? FieldObservationTableViewCell {
            let FieldSurvey = FieldSurveys[indexPath.row]
            cell.ObsercationImageView.image = FieldSurvey.classification.image
            cell.titleLabel.text = FieldSurvey.title
            cell.dateLabel.text = dateFormatter.string(from: FieldSurvey.date)
        }
    
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldObservationDetailViewController{
            let row = FieldSurveyTableView.indexPathForSelectedRow?.row {
            destination.FieldSurvey = FieldSurveys[row]
            }
        }
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
