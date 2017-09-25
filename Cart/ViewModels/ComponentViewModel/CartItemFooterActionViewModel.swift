//
//  CartItemFooterActionViewModel.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/21/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import IGListKit

class CartItemFooterActionViewModel: CartItemFooterActionViewModelType {
    func diffIdentifier() -> NSObjectProtocol {
        return self as! NSObjectProtocol
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return self === object
    }

}
