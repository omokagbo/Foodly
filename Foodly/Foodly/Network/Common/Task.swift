//
//  Task.swift
//  Foodly
//
//  Created by Emmanuel Omokagbo on 6/5/21.
//

import Foundation

enum Tasks {
    case read
    case qread(type: String )
    case delete
    case create(documentData: Parameter)
    case update(documentData: Parameter)
}
