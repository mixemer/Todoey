//
//  Item.swift
//  Todoey
//
//  Created by Mehmet Sahin on 1/18/19.
//  Copyright © 2019 Mehmet Sahin. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var isDone: Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
