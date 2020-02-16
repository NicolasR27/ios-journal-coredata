//
//  Entry + convenience.swift
//  Ios Journal Coredata
//
//  Created by Nicolas Rios on 2/15/20.
//  Copyright © 2020 Nicolas Rios. All rights reserved.
//

import Foundation
import CoreData


extension Entry {
    convenience init(title: String,
                     bodyText: String,
                     identifier: String = UUID().uuidString,
                     timestamp: Date = Date(),
                     context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.title = title
        self.bodyText = bodyText
        self.identifier = identifier
        self.timestamp = timestamp
    }
}
