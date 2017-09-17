//
//  MainInfoCellViewModelType.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import IGListKit

protocol MainInfoCellViewModelType: ListDiffable {
    var productImageURL: URL { get }
    var productName: String { get }
    var brandName: String { get }
    var variation: [String]? { get }
    var priceText: String { get }
    var discountPriceText: String? { get }
}
