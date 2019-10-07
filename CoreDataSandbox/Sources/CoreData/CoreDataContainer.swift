//
//  CoreDataContainer.swift
//  CoreDataSandbox
//
//  Created by Shun Kuroda on 2019/10/06.
//  Copyright © 2019 Shun Kuroda. All rights reserved.
//

import CoreData
import Foundation

class CoreDataContainer {

    static let shared = CoreDataContainer()

    private var persistentContainer: NSPersistentContainer

    init() {
        let container = NSPersistentContainer(name: "CoreDataSandbox")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            // TODO: Error handling
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        // loadが非同期なのでなんか対策いるかも
        persistentContainer = container
    }

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // TODO: Error handling
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}
