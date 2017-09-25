//
//  SellerViewModel.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import IGListKit

class SellerViewModel: SellerViewModelType {
    var sellerName: String
    var itemViewModels: [CartItemViewModel]

    init(_ seller: Seller) {
        sellerName = seller.name ?? ""
        if let items = seller.items {
            itemViewModels = items.map(CartItemViewModel.init)
        } else {
            itemViewModels = []
        }
    }

    func diffIdentifier() -> NSObjectProtocol {
        return sellerName as NSObjectProtocol
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return true
    }


}
