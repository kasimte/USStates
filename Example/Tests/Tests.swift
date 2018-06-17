//
//   USStateTest.swift
//   USStates
//
//   Created by Kasim Te on 11/21/2017.
//   Copyright 2017. All rights reserved.
//

import XCTest
import USStates

class USStateTest: XCTestCase {
  override func setUp() { super.setUp() }
  override func tearDown() { super.tearDown() }

  func testCaliforniaIsAState() {
    let state = USState(abbreviation: "MA")
    XCTAssertNotNil(state)
  }

  func testStateExsistsViaFunction() {
    XCTAssertTrue(USState.stateExists(for: "CA"))
    XCTAssertFalse(USState.stateExists(for: "$$"))
  }

  func testBadAbbreviationIsNotAState() {
    XCTAssertNil(USState(abbreviation: "$$"))
  }

  func testCaliforniaFullName() {
    let cali = USState(abbreviation: "CA")
    XCTAssertEqual(cali?.fullName, "California")
  }

  func testBadStateNilName() {
    let bad = USState(abbreviation: "$$")
    XCTAssertNil(bad?.fullName)
  }
}
