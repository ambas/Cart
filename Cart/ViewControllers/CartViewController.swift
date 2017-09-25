//
//  CartViewController.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import UIKit
import IGListKit

class CartViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!

    var viewModel: CartViewModelType!
    lazy var adapter: ListAdapter = {
        let adapter = ListAdapter(updater: ListAdapterUpdater(), viewController: self)
        adapter.collectionView = self.collectionView
        adapter.dataSource = self
        return adapter
    }()
    var sellerViewModels: [SellerViewModelType]?

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewModel()
    }

    func configureViewModel() {
        viewModel.getSellers { [unowned self] sellerViewModels in
            self.sellerViewModels = sellerViewModels
            self.adapter.performUpdates(animated: true, completion: nil)
        }
    }

    @IBAction func refreshButtonDidTouch(_ sender: Any) {
        viewModel.getSellers { [unowned self] sellerViewModels in
            self.sellerViewModels = sellerViewModels
            self.adapter.performUpdates(animated: true, completion: nil)
        }
    }
    
}

extension CartViewController: ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return sellerViewModels ?? []
    }

    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return CartSectionController()
    }

    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}

