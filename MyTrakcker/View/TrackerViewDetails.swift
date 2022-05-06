//
//  TrackerViewDetails.swift
//  MyTrakcker
//
//  Created by Antoine on 06/05/2022.
//

import SwiftUI

struct TrackerViewDetails: View {
    
    var tracks : trackerModel
    @EnvironmentObject private var TrackerVM : trackerViewModel
    
    var body: some View {
        ZStack {
            VStack(spacing: 16) {
                Image(tracks.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400, height: 180)
                Spacer()
                VStack {
                    Text(tracks.name)
                    Stepper("Temps passé: \(TrackerVM.tmpActivity)", value: $TrackerVM.tmpActivity, in: Int(0.30)...100)
                        .pickerStyle(WheelPickerStyle())
                }
                .padding()
                .frame(width: 400, height: 400)
                .background(.blue)
                .cornerRadius(45)
                Spacer()
            }
        }
        .padding()
        
    }
}

struct TrackerViewDetails_Previews: PreviewProvider {
    static var previews: some View {
        TrackerViewDetails(tracks: trackerModel.tracker.first!)
            .environmentObject(trackerViewModel())
    }
}
