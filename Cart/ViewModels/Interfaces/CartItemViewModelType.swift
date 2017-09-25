//
//  CartItemViewModelType.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import IGListKit

protocol CartItemViewModelType: ListDiffable {
    var mainInfoCellViewModel: MainInfoCellViewModelType { get }
}
