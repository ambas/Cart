//
//  CartItemViewModel.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import IGListKit

class CartItemViewModel: CartItemViewModelType {
    var mainInfoCellViewModel: MainInfoCellViewModelType
    var bundleViewModels: [CartItemViewModel]?

    let item: Item

    init(_ item: Item) {
        self.item = item
        mainInfoCellViewModel = MainInfoCellViewModel(productImageURL: item.imageURL!, productName: item.name ?? "", brandName: "", variation: [], priceText: item.price!, discountPriceText: "")
        if let bundles = item.bundles {
            bundleViewModels = bundles.map(CartItemViewModel.init)
        }
    } 

    func diffIdentifier() -> NSObjectProtocol {
        return "test" as NSObjectProtocol
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return true
    }

}
