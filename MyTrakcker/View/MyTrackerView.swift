//
//  MyTrackerView.swift
//  MyTrakcker
//
//  Created by Antoine on 05/05/2022.
//

import SwiftUI

struct MyTrackerView: View {
    
    var tracks : [trackerModel]
    
    var body: some View {
        
        NavigationView {
            List(trackerModel.tracker) { track in
                NavigationLink(destination: TrackerViewDetails(tracks : track))
                {
                    HStack(spacing: 16) {
                        Image(track.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 90, height: 90)
                            .cornerRadius(15)
                        Text(track.name)
                    }.padding()
                }
            }
            .navigationTitle("MyTracker")
        }
    }
}

struct MyTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        MyTrackerView(tracks: trackerModel.tracker)
            .environmentObject(trackerViewModel())
    }
}
