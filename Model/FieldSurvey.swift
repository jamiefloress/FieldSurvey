//
//  FieldSurvey.swift
//  Field Survey
//
//  Created by Jamie Flores on 7/21/17.
//  Copyright © 2017 Jamie Flores. All rights reserved.
//

import Foundation

struct FieldSurvey {
    let classification: Classification
    let title: String
    let description: String
    let date: Date

    init(classification: Classification, title: String, description: String, date: Date) {
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(classificationType: Classification, title: String, description: String, date: Date) {
        if let classification = classificationType(rawValue: classificationType){
            self.init(classification: classification, title: title, description: description, date: Date)
        } else {
            return nil
        }
        
    }
    
}

