//
//  FieldObservationsJSONParser.swift
//  Field Survey
//
//  Created by Jamie Flores on 7/21/17.
//  Copyright © 2017 Jamie Flores. All rights reserved.
//

import Foundation

class FieldObservationsJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    
    
    class func parse(_ data: Data) -> [FieldSurvey] {
        var fieldObservations = [FieldSurvey]()
        
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            
            if let observations = root["observations"] as? [Any] {
                for observation in observations {
                    if let observation = observation as? [String: String] {
                        if let classification = observation["classification"],
                        let title = observation["title"],
                        let description = observation["description"],
                            let dateString = observation["date"]{
                                let date = dateFormatter.date(from: dateString)
                            
                            if let fieldObservations = fieldObservations(classificationType: classification, title: title, description: description, date: date) {
                                fieldObservations.append(fieldObservations)
                            }
                        }
                    }
                }
            
            }
            
        return fieldObservations
        }
    }
}
