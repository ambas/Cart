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

    func getCart(success: @escaping (Cart) -> ()) {
        connector.requestObject(path: "", param: [:], isShowLoading: false, require: nil, errorHandler: { (error) in

        }) { (cart: Cart) in
            success(cart)
        }
    }

}
