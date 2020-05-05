//
//  SwiftAlgorithmsTests.swift
//  SwiftAlgorithmsTests
//
//  Created by Vixtor on 2020-05-03.
//  Copyright © 2020 VixtorDev. All rights reserved.
//

import XCTest
@testable import SwiftAlgorithms

class ArrayTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInsertionSortAlgorithms() throws {
        // TODO: MULTIPLE TYPE TEST
        let test = [2,3,1,5,2,1,6,7,8,234,34,1,2,12,13]
        let sorted = test.insertionSort()
        print(sorted)
        XCTAssertTrue(sorted == test.sorted(by: <))
        XCTAssertFalse(sorted == test.sorted(by: >))
        
    }
    
    func testMergeSortAlgothms() throws{
        // TODO: MULTIPLE TYPE TEST
        let test = [2,3,1,5,2,1,6,7,8,234,34,1,2,12,13]
        let sorted = test.mergeSort()
        print(" List Element Sorted Test: \(sorted)")
        XCTAssertTrue(sorted == test.sorted(by: <))
        XCTAssertFalse(sorted == test.sorted(by: >))
        
        let test1 = [2]
        let sorted1 = test1.mergeSort()
        print(" Single Element Sorted Test: \(sorted1)")
        XCTAssertTrue(sorted1 == test1.sorted(by: <))
        XCTAssertTrue(sorted1 == test1.sorted(by: >))
        
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
