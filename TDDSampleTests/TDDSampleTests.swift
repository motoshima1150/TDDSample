//
//  TDDSampleTests.swift
//  TDDSampleTests
//
//  Created by Motonari NAKASHIMA on 2020/08/12.
//  Copyright © 2020 Motonari NAKASHIMA. All rights reserved.
//

import XCTest
@testable import TDDSample

class TDDSampleTests: XCTestCase {
    func testFirstMoment() {
        let calculator = InstrumentCalculator()

        calculator.add(element: 1.0)
        calculator.add(element: 2.0)

        XCTAssertEqual(-0.5, calculator.firstMomentAbout(element: 2.0))
    }
}
