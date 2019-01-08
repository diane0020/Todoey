//
//  Category.swift
//  Todoey
//
//  Created by John Randolph Bangal on 08/01/2019.
//  Copyright © 2019 Diana Rose Bangal. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    //Properties
    @objc dynamic var name : String = ""
    
    //Relationship
    let items = List<Item>()
}
