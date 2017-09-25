//
//  CartModuleAssembly.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class CartModuleAssembly: Assembly {
    func assemble(container: Container) {

        container.register(CartViewModel.self) { (r)  in
            var viewModel = CartViewModel()
            viewModel.connector = CartClient()
            return viewModel
        }

        container.storyboardInitCompleted(CartViewController.self) { r, viewController in
            viewController.viewModel = r.resolve(CartViewModel.self)
        }

        container.storyboardInitCompleted(UINavigationController.self) { r, viewController in
            
        }
    }

}
