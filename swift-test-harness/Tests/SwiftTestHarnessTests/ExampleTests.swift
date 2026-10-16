#if canImport(Testing)
import Testing
import Bincode

@Suite("Bincode Swift Export Tests")
struct BincodeExportTests {
    @Test("Bincode swift module imported cleanly")
    func testSwiftModuleLoads() throws {
        #expect(Bool(true), "Bincode swift module imported cleanly")
    }
}
#elseif canImport(XCTest)
import XCTest
import Bincode

final class BincodeExportTests: XCTestCase {
    func testSwiftModuleLoads() throws {
        XCTAssertTrue(true, "Bincode swift module imported cleanly")
    }
}
#endif
