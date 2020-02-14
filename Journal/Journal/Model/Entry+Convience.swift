//
//  Entry+Convience.swift
//  Journal
//
//  Created by Nicolas Rios on 12/4/19.
//  Copyright © 2019 Nicolas Rios. All rights reserved.
//



import Foundation
import CoreData

enum MoodSetting: String {
    case unhappy
    case neutral
    case happy
    
    static var allMoods: [MoodSetting] {
        return [.unhappy, .neutral, .happy]
    }
}

extension Entry {
    convenience init(title: String,
                     moodSetting: MoodSetting = .neutral,
                     bodyText: String,
                     identifier: String = UUID().uuidString,
                     timestamp: Date = Date(),
                     context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.title = title
        self.moodSetting = moodSetting.rawValue
        self.bodyText = bodyText
        self.identifier = identifier
        self.timestamp = timestamp
    }
}
