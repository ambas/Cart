//
//  Seller.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import Hatstall
import ObjectMapper

struct Seller: Requestable {
    var name: String?
    var items: [Item]?
    static var path = "/seller"

    init?(map: Map) {}

    mutating func mapping(map: Map) {
        name <- map["name"]
        items <- map["items"]
    }

}
