//
//  UserEnvironment.swift
//  SwiftUI Core Data Test
//
//  Created by Chuck Hartman on 8/23/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//

import Foundation
import SwiftUI

class Model: ObservableObject {
    
    init() {
        self.pushedItemDetail = nil
        self.pushedAttributeDetail = nil
    }
    
    @Published var pushedItemDetail: Item?
    @Published var pushedAttributeDetail: Attribute?
}
