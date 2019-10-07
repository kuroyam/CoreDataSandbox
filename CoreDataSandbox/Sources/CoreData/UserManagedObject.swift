//
//  UserManagedObject.swift
//  CoreDataSandbox
//
//  Created by kuroyam on 2019/10/07.
//  Copyright © 2019 Shun Kuroda. All rights reserved.
//

import CoreData
import Foundation

class UserManagedObject: NSManagedObject {

}

extension UserManagedObject {

    @NSManaged var id: NSNumber
    @NSManaged var name: String
    @NSManaged var displayName: String?
    @NSManaged var avatarURL: String?

}
