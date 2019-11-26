//
//  ProductEntity.swift
//  DataBaseTest
//
//  Created by 刘二拐 on 2019/11/20.
//  Copyright © 2019 刘二拐. All rights reserved.
//

import ObjectBox

class ProductEntity: Entity {
    var id: Id  = 0
    var prdouctName = ""
    var prdouctID = ""
    var prdouctDes = ""
    var prdouctPrice = ""
    var prdouctUom = ""
    var prdouctCategory = ""
    required init() {
        // no properties, so nothing to do here, ObjectBox calls this
    }
    var description: String { return "ProductEntity {\(id), \(prdouctName), \(prdouctID), \(prdouctDes), \(prdouctPrice), \(prdouctUom), \(prdouctCategory)}" }
}
