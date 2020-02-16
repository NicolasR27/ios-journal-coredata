//
//  CoreDataStack.swift
//  Ios Journal Coredata
//
//  Created by Nicolas Rios on 2/15/20.
//  Copyright © 2020 Nicolas Rios. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    static let shared = CoreDataStack()
    
    lazy var container: NSPersistentContainer = {
        let newContainer = NSPersistentContainer(name: "Entry")
        newContainer.loadPersistentStores { (_, error) in
            guard error == nil else {
                fatalError("Failed to load persisten stores: \(error!)")
            }
        }
        return newContainer
    }()
    
    var mainContext: NSManagedObjectContext {
        return container.viewContext
    }
}

