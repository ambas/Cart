//
//  CartViewModel.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import Hatstall

struct CartViewModel: CartViewModelType {
    var connector: Connectable!

    func getSellers(success: @escaping ([SellerViewModelType]) -> ()) {
        connector.requestObject(path: "", param: [:], isShowLoading: false, require: nil, errorHandler: { (error) in
            // Handle Error
        }) { (cart: Cart) in
            guard let sellers = cart.sellers else {
                success([])
                return
            }

            let sellersViewModel = sellers.map(SellerViewModel.init)
            success(sellersViewModel)
        }
    }

}
