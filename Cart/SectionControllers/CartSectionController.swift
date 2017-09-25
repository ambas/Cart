//
//  CartSectionController.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import IGListKit

class CartSectionController: ListBindingSectionController <ListDiffable>, ListBindingSectionControllerDataSource {


    override init() {
        super.init()
        dataSource = self
        inset = UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 0)
    }

    func sectionController(_ sectionController: ListBindingSectionController<ListDiffable>, viewModelsFor object: Any) -> [ListDiffable] {
        let componentViewModels: [ListDiffable]
        if let sellerViewModel = object as? SellerViewModel {
            componentViewModels = sellerViewModel.viewModels()
        } else {
            componentViewModels = []
        }
        return componentViewModels
    }

    func sectionController(_ sectionController: ListBindingSectionController<ListDiffable>, cellForViewModel viewModel: Any, at index: Int) -> UICollectionViewCell {
        if viewModel is MainInfoCellViewModelType {
            return collectionContext!.dequeueReusableCell(withNibName: "MainInfoCell", bundle: nil, for: self, at: index)
        } else if viewModel is CartItemFooterActionViewModelType {
            return collectionContext!.dequeueReusableCell(withNibName: "CartItemFooterActionCell", bundle: nil, for: self, at: index)
        } else {
            return collectionContext!.dequeueReusableCell(of: MainInfoCell.self, for: self, at: index)
        }
    }

    func sectionController(_ sectionController: ListBindingSectionController<ListDiffable>, sizeForViewModel viewModel: Any, at index: Int) -> CGSize {
        let cellHeight: CGFloat
        if viewModel is MainInfoCellViewModelType {
            cellHeight = 142
        } else if viewModel is CartItemFooterActionViewModelType {
            cellHeight = 36
        } else {
            cellHeight = 0
        }
        return CGSize(width: self.collectionContext!.containerSize.width, height: cellHeight)
    }
}
