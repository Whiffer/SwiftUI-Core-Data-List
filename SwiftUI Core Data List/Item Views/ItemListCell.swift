//
//  ItemListCell.swift
//  SwiftUI Core Data Test
//
//  Created by Chuck Hartman on 8/18/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//

import SwiftUI

struct ItemListCell: View {
    
    let item: Item
    
    var body: some View {
        HStack {
            VStack {
                HStack {
                    Text(self.item.name)
                        .font(.headline)
                    Spacer()
                }
                HStack {
                    Text(String(self.item.order))
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                }
            }
        }
    }
}

#if DEBUG
struct ItemListCell_Previews: PreviewProvider {
    static var previews: some View {
        ItemListCell(item: Item.preview() )
    }
}
#endif
