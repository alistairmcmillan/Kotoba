//
//  WordListTests.swift
//  Kotoba
//
//  Created by Will Hains on 2016-06-25.
//  Copyright © 2016 Will Hains. All rights reserved.
//

import XCTest
@testable import Kotoba

class WordListTests: XCTestCase
{
	func testRemoveShouldDoNothingWhenElementNotFound()
	{
		var subject: [String] = ["a", "b", "c"]
		subject.remove("d")
		XCTAssertEqual(subject, ["a", "b", "c"])
	}
	
	func testRemoveShouldRemoveOnlyFirstElementFound()
	{
		var subject: [String] = ["a", "b", "c", "b"]
		subject.remove("b")
		XCTAssertEqual(subject, ["a", "c", "b"])
	}
}