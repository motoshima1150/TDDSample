//
//  InstrumentCalculator.swift
//  TDDSample
//
//  Created by Motonari NAKASHIMA on 2020/08/12.
//  Copyright © 2020 Motonari NAKASHIMA. All rights reserved.
//

import Foundation

final class InstrumentCalculator {

    var elements = [Double]()

    func firstMomentAbout(point: Double) -> Double {
        var numerator = 0.0

        for it in elements {
            numerator += it - point
        }

        return numerator / Double(elements.count)
    }

    func add(element: Double) {
        elements.append(element)
    }
}
