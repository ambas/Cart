//
//  ApplicationAssembly.swift
//  Cart
//
//  Created by Ambas Chobsanti (Lazada Group) on 9/17/17.
//  Copyright © 2017 Ambas Chobsanti (Lazada Group). All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class ApplicationAssembly {
    class var assembler: Assembler {
        return Assembler([CartModuleAssembly()])
    }
}

extension SwinjectStoryboard {
    class func setup() {
        defaultContainer = ApplicationAssembly.assembler.resolver as! Container
    }
}
