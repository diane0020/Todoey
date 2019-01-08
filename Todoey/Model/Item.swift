//
//  Item.swift
//  Todoey
//
//  Created by John Randolph Bangal on 08/01/2019.
//  Copyright © 2019 Diana Rose Bangal. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    //Properties
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated : Date?
    
    //Inverse Relationship linking to parent category
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
