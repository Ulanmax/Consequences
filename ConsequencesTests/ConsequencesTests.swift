//
//  ConsequencesTests.swift
//  ConsequencesTests
//
//  Created by Maks Niagolov on 2020/06/11.
//  Copyright © 2020 Maksim Niagolov. All rights reserved.
//

import XCTest
@testable import Consequences

class ConsequencesTests: XCTestCase {
    
    var sut: Model!

    override func setUpWithError() throws {
        super.setUp()
        
        sut = Model()
        
    }

    override func tearDownWithError() throws {
        sut = nil
        super.tearDown()
    }
    
    func testArraySequencing() {
        
        let result = sut.doCalculate(text: "1, 2, 3, 5, 8, 9, 10, 7")

        XCTAssertEqual(result, "1-3, 5, 7-10", "Didn't split the array correctly")
    }

}
