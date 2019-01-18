//
//  Category.swift
//  Todoey
//
//  Created by Mehmet Sahin on 1/18/19.
//  Copyright © 2019 Mehmet Sahin. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
