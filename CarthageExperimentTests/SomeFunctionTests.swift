import Foundation
import Quick
import Nimble
@testable import CarthageExperiment

class SomeFunctionTests: QuickSpec {
    override func spec() {
        describe("a test") {
            it("fails") {
                expect(true).to(beTrue())
            }
        }

        describe("some function") {
            var result: String!

            beforeEach {
                result = doAThing(someString: "foobar")
            }

            it("does a thing") {
                expect(result).to(equal("This is a string: foobar"))
                expect(result).to(contain("foobar"))
                expect(result).notTo(contain("barbaz"))
            }
        }
    }
}
