//
//  BackButton.swift
//  SwiftUI Core Data List
//
//  Created by Chuck Hartman on 8/30/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//

import SwiftUI

struct BackButton: View {
    
    let label: String
    let closure: () -> ()

    var body: some View {
        Button(action: { self.closure() }) {
            HStack {
                Image(systemName: "chevron.left")
                Text(label)
            }
        }
    }
}

#if DEBUG
struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton(label: "title") { }
    }
}
#endif
