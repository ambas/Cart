//
//  CartViewModelType.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

protocol CartViewModelType {
    func getSellers(success: @escaping ([SellerViewModelType]) -> ())
}
