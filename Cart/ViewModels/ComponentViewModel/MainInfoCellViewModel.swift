//
//  MainInfoCellViewModel.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import IGListKit

class MainInfoCellViewModel: MainInfoCellViewModelType {


    func diffIdentifier() -> NSObjectProtocol {
        return productName as NSObjectProtocol
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return true
    }

    var productImageURL: URL
    var productName: String
    var brandName: String
    var variation: [String]?
    var priceText: String
    var discountPriceText: String?

    init(productImageURL: URL, productName: String, brandName: String, variation: [String]?, priceText: String, discountPriceText: String? = nil) {
        self.productImageURL = productImageURL
        self.productName = productName
        self.brandName = brandName
        self.variation = variation
        self.priceText = priceText
        self.discountPriceText = discountPriceText
    }

}
