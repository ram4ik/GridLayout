//
//  ContentView.swift
//  GridLayout
//
//  Created by ramil on 21.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI
import Combine


struct ContentView: View {
 
    var body: some View {
        
        NavigationView {
            List {
                ImageRow()
            }.navigationBarTitle(Text("Landscapes"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
