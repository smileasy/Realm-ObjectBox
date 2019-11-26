//
//  Product.swift
//  DataBaseTest
//
//  Created by 刘二拐 on 2019/11/19.
//  Copyright © 2019 刘二拐. All rights reserved.
//

import UIKit
import RealmSwift
class Product: Object {
    @objc dynamic var id_ = 0
    @objc dynamic var prdouctName = ""
    @objc dynamic var prdouctID = ""
    @objc dynamic var prdouctDes = ""
    @objc dynamic var prdouctPrice = ""
    @objc dynamic var prdouctUom = ""
    @objc dynamic var prdouctCategory = ""
//    override static func primaryKey() -> String? {
//        return "id_"
//    }
    override var description: String { return "Product {\(id_), \(prdouctName), \(prdouctID), \(prdouctDes), \(prdouctPrice), \(prdouctUom), \(prdouctCategory)}" }
}
