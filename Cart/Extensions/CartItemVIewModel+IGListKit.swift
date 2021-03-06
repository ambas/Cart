//
//  CartItemVIewModel+IGListKit.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import IGListKit

extension CartItemViewModel {
    func viewModels() -> [ListDiffable] {
        var viewModels: [ListDiffable] = [mainInfoCellViewModel]
        viewModels.append(CartItemFooterActionViewModel())
        if let bundles = self.bundleViewModels {
            viewModels.append(contentsOf: bundles.map { $0.mainInfoCellViewModel } as [ListDiffable])
        }
        return viewModels
    }
}

