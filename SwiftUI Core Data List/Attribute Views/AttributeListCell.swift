//
//  AttributeListCell.swift
//  SwiftUI Core Data Test
//
//  Created by Chuck Hartman on 8/18/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//

import SwiftUI

struct AttributeListCell: View {
    
    let attribute: Attribute
    
    var body: some View {
        HStack {
            VStack {
                HStack {
                    Text(self.attribute.name)
                        .font(.headline)
                    Spacer()
                }
                HStack {
                    Text(String(self.attribute.order))
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                }
            }
        }
    }
}

#if DEBUG
struct AttributeListCell_Previews: PreviewProvider {
    static var previews: some View {
        AttributeListCell(attribute: Attribute.preview() )
    }
}
#endif
