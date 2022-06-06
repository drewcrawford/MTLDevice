//
//  macTests.swift
//  macTests
//
//  Created by Drew Crawford on 10/8/20.
//

import XCTest
import Metal
@testable import MTLDeviceTestApp

class macTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMetalDevice() throws {
        let devices = MTLCopyAllDevicesWithObserver { (_, _) in
            //
        }
        print("all devices",devices.devices)
        MTLRemoveDeviceObserver(devices.observer)
        record(.init(type: .assertionFailure, compactDescription: String(describing: devices)))
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
