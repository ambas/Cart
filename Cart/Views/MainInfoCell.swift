//
//  MainInfoCell.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import IGListKit

class MainInfoCell: UICollectionViewCell {
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var brandNameLabel: UILabel!
    @IBOutlet weak var varitionStackView: UIStackView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!

    var viewModel: MainInfoCellViewModelType! {
        didSet {
            productNameLabel.text = viewModel.productName
            brandNameLabel.text = viewModel.brandName
            priceLabel.text = viewModel.priceText
            discountLabel.text = viewModel.discountPriceText
            productImageView.kf.setImage(with: viewModel.productImageURL)
        }
    }
}

extension MainInfoCell: ListBindable {
    func bindViewModel(_ viewModel: Any) {
        guard let viewModel = viewModel as? MainInfoCellViewModelType else {
            return
        }
        self.viewModel = viewModel
    }

}
