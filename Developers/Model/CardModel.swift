//
//  CardModel.swift
//  Developers
//
//  Created by Jasmine Lai Hweeying on 05/06/2023.
//

import SwiftUI

struct Card: Identifiable {
    var id:UUID = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
