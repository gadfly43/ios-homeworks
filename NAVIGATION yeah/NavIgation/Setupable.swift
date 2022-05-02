//
//  Setupable.swift
//  NavIgation
//
//  Created by Anna Ovodova on 25.04.2022.
//

import Foundation
protocol ViewModelProtocol {}

 protocol Setupable {
     func setup(with viewModel: ViewModelProtocol)
 }
