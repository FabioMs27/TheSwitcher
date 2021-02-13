//
//  FormattingTests.swift
//  TheSwitcher_FabioMsTests
//
//  Created by Fábio Maciel de Sousa on 12/02/21.
//

import XCTest
@testable import TheSwitcher_FabioMs

class FormattingTests: XCTestCase {

    func testStringFormatting() {
        let sut = "Kitchen"
        XCTAssertEqual(sut.formattedDivision, "Your Kitchen light is")
    }

}
