//
//  InstrumentCalculator.swift
//  TDDSample
//
//  Created by Motonari NAKASHIMA on 2020/08/12.
//  Copyright © 2020 Motonari NAKASHIMA. All rights reserved.
//

import Foundation

enum InvalidBasisException: Error {
    case noElement
}

final class InstrumentCalculator {

    var elements = [Double]()

    func add(element: Double) {
        elements.append(element)
    }

    func firstMomentAbout(point: Double) throws -> Double {
        try nthMomentAbout(point: point, n: 1.0)
    }

    func secondMomentAbout(point: Double) throws -> Double {
        try nthMomentAbout(point: point, n: 2.0)
    }

    private func nthMomentAbout(point: Double, n: Double) throws -> Double {
        guard !elements.isEmpty else {
            throw InvalidBasisException.noElement
        }
        var numerator = 0.0

        for it in elements {
            numerator += pow(it - point, n)
        }

        return numerator / Double(elements.count)
    }
}
