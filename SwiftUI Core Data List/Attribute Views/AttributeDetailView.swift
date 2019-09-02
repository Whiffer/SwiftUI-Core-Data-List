//
//  AttributeDetailView.swift
//  SwiftUI Core Data Test
//
//  Created by Chuck Hartman on 8/20/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//

import SwiftUI

struct AttributeDetailView: View {
    
    var attribute: Attribute
    
    var body: some View {
        
        Form {
            
            Section(header: Text("Attribute".uppercased())) {
                
                VStack {
                    HStack {
                        Text("Name: ").foregroundColor(.gray)
                        Spacer()
                    }
                    HStack {
                        Text(self.attribute.name)
                        Spacer()
                    }
                }
                
                VStack {
                    HStack {
                        Text("Order: ").foregroundColor(.gray)
                        Spacer()
                    }
                    HStack {
                        Text(String(self.attribute.order) )
                        Spacer()
                    }
                }
            }
        }
        .navigationBarTitle(Text("Attribute Detail"), displayMode: .large)
    }
}

#if DEBUG
struct AttributeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AttributeDetailView(attribute: Attribute.preview() )
        }
    }
}
#endif
