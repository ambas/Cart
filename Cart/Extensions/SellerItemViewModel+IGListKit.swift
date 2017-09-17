//
//  SellerItemViewModel+IGListKit.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import IGListKit

extension SellerViewModel {
    func viewModels() -> [ListDiffable] {
        return itemViewModels.flatMap { $0.viewModels() }
    }
}
