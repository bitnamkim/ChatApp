//
//  HelperFunctions.swift
//  ChatApp
//
//  Created by Pigman on 23/05/2019.
//  Copyright © 2019 Pigman. All rights reserved.
//

import Foundation
import UIKit
import FirebaseFirestore

// Mark: - GLOBAL FUNCTIONS
private let dateFormat = "yyyyMMddHHmmss"

func dateFormatter() -> DateFormatter {
    
    let dateFormatter = DateFormatter()
    
    dateFormatter.timeZone = TimeZone(secondsFromGMT: TimeZone.current.secondsFromGMT())
    
    dateFormatter.dateFormat = dateFormat
    
    return dateFormatter
}
