import XCTest
@testable import HighwayHash

final class HighwayHashTests: XCTestCase {

  func testDefaultSeed() throws {
    XCTAssertEqual(Seed.default, .init(a: 1, b: 0, c: 6, d: 6))
  }

  func testDefaultHash() throws {
    let input = "battle of hastings"
    let output = HighwayHash.default.of(input)
    XCTAssertEqual(output, UInt64(10_502_827_635_072_092_050))
  }

}
