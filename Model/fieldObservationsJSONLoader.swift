//
//  fieldObservationsJSONLoader.swift
//  Field Survey
//
//  Created by Jamie Flores on 7/21/17.
//  Copyright © 2017 Jamie Flores. All rights reserved.
//

import Foundation

class fieldObservationsJSONLoader {
    
    class func load(fileName: String) -> [FieldSurvey] {
        var observations = [FieldSurvey]()
    
    if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
        let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observations = FieldObservationsJSONParser.parse(data)
        }
        return observations
        }
    }
}
