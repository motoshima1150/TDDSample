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

        XCTAssertEqual(-0.5, try! calculator.firstMomentAbout(point: 2.0))
    }

    func testFirstMomentException() {
        let calculator = InstrumentCalculator()
        do {
            try calculator.firstMomentAbout(point: 0.0)
            XCTFail("expected InvalidBasisException")
        } catch {
            XCTAssertEqual((error as? InvalidBasisException), InvalidBasisException.noElement)
        }
    }

    func testSecondMomentAbout() {
        let calculator = InstrumentCalculator()

        calculator.add(element: 1.0)
        calculator.add(element: 2.0)

        XCTAssertEqual(0.5, try! calculator.secondMomentAbout(point: 2.0))
    }
}
