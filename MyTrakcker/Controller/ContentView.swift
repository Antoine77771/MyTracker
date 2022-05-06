//
//  ContentView.swift
//  MyTrakcker
//
//  Created by Antoine on 05/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelected : Tab = .house
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $tabSelected) {
                        HStack {
                            MyTrackerView(tracks: trackerModel.tracker)
                        }
                }
            }
            VStack {
                Spacer()
                CustomTabBar(selectTab: $tabSelected)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(trackerViewModel())
            .previewInterfaceOrientation(.portrait)
    }
}
