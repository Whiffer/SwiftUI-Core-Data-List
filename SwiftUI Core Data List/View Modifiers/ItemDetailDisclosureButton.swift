//
//  ItemDetailDisclosureButton.swift
//  MyContainers Experiments
//
//  Created by Chuck Hartman on 8/18/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//

import SwiftUI

struct ItemDetailDisclosureButton: View {
    
    let item:  Item
    
    @State private var showingItemDetail = false
    
    var body: some View {

        return HStack {
            Image(systemName: "info.circle")
                .onTapGesture {
                    self.showingItemDetail = true
            }
            NavigationLink(destination: ItemDetailView(item: item),
                           isActive: self.$showingItemDetail)
            { EmptyView() }
                .frame(width: 0, height: 0)
                .disabled(true)
            // Comment out if no other NavigationLink in List row
            Image(systemName: "chevron.right")
        }
    }
}

#if DEBUG
struct ItemDetailDisclosureButton_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailDisclosureButton(item: Item.preview() )
    }
}
#endif
