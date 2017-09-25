//
//  Item.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import Hatstall
import ObjectMapper

struct Item: Requestable {
    static var path = ""
    var name: String?
    var bundles: [Item]?
    var imageURL : URL?
    var price: String?

    init?(map: Map) {}

    mutating func mapping(map: Map) {
        name <- map["name"]
        bundles <- map["bundles"]
        imageURL <- (map["image"], URLTransform())
        price <- map["price"]
    }
}
