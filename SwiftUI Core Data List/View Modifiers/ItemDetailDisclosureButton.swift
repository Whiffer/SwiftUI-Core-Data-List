//
//  ItemDetailDisclosureButton.swift
//  MyContainers Experiments
//
//  Created by Chuck Hartman on 8/18/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//

import SwiftUI

struct ItemDetailDisclosureButton: View {
    
    @EnvironmentObject var model: Model
    
    let item:  Item
    
    var body: some View {
        
        return HStack {
            Image(systemName: "info.circle")
                .onTapGesture {
                    self.model.pushedItemDetail = self.item
            }
            NavigationLink(destination: ItemDetailView(item: item),
                           tag: self.item,
                           selection: self.$model.pushedItemDetail)
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
            .environmentObject(Model())
    }
}
#endif
