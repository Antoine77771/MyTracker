//
//  TrackerModel.swift
//  MyTrakcker
//
//  Created by Antoine on 05/05/2022.
//

import Foundation
import SwiftUI

struct trackerModel: Identifiable {
    var id = UUID()
    var imageName: String
    var name: String
    
    static let tracker = [
        trackerModel(imageName: "TrackerNoir", name: "Sleeping"),
        trackerModel(imageName: "TrackerViolet", name: "Coding"),
        trackerModel(imageName: "TrackerVert", name: "Running"),
        trackerModel(imageName: "TrackerRouge", name: "Gamming"),
    ]
}

