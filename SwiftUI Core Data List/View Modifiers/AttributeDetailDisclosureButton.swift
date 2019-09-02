//
//  AttributeDetailDisclosureButton.swift
//  MyContainers Experiments
//
//  Created by Chuck Hartman on 8/18/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//

import SwiftUI

struct AttributeDetailDisclosureButton: View {
    
    @EnvironmentObject var model: Model
    
    let attribute:  Attribute
    
    var body: some View {
        
        return HStack {
            Image(systemName: "info.circle")
                .onTapGesture {
                    self.model.pushedAttributeDetail = self.attribute
            }
            NavigationLink(destination: AttributeDetailView(attribute: attribute),
                           tag: self.attribute,
                           selection: self.$model.pushedAttributeDetail)
            { EmptyView() }
                .frame(width: 0, height: 0)
                .disabled(true)
            // Comment out if no other NavigationLink in List row
//            Image(systemName: "chevron.right")
        }
    }
}

#if DEBUG
struct AttributeDetailDisclosureButton_Previews: PreviewProvider {
    static var previews: some View {
        AttributeDetailDisclosureButton(attribute: Attribute.preview() )
            .environmentObject(Model())
    }
}
#endif
