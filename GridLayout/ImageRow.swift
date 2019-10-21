//
//  ImageRow.swift
//  GridLayout
//
//  Created by ramil on 21.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ImageRow: View {
    var body: some View {
        var images: [[Int]] = []
        _ = (1...18).publisher
            .collect(2)
            .collect()
            .sink(receiveValue: { images = $0 })
        
        return ForEach(0..<images.count, id: \.self) { array in
            HStack {
                ForEach(images[array], id: \.self) { number in
                    Image("noaa\(number)")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                    }
            
            }
        }
    }
}

struct ImageRow_Previews: PreviewProvider {
    static var previews: some View {
        ImageRow()
    }
}
