//
//  Cart.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import Hatstall
import ObjectMapper

struct Cart: Requestable {
    var sellers: [Seller]?
    static var path = "/cart"

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        sellers <- map["sellers"]
    }

}
