//
//  EmptyCodable_tests.swift
//
//
//  Created by Jeremy Bannister on 7/28/24.
//

///
import XCTest
import EmptyCodable_module


///
final class EmptyCodable_tests: XCTestCase {
    
    ///
    func test_init() {
        _ = EmptyCodable()
    }
    
    ///
    func test_Codable_conformance() {
        func proof<T: Codable>(_ t: T.Type) { }
        proof(EmptyCodable.self)
    }
    
    ///
    func test_Hashable_conformance() {
        func proof<T: Hashable>(_ t: T.Type) { }
        proof(EmptyCodable.self)
    }
    
    ///
    func test_encoding() throws {
        
        ///
        let encodedData = try JSONEncoder().encode(EmptyCodable())
        
        ///
        let expectedData = "{}".data(using: .utf8)!
        
        ///
        if encodedData != expectedData {
            XCTFail()
        }
    }
    
    ///
    func test_decoding() throws {
        
        ///
        _ = try JSONDecoder()
            .decode(
                EmptyCodable.self,
                from: "{}".data(using: .utf8)!
            )
        
        ///
        do {
            
            ///
            _ = try JSONDecoder()
                .decode(
                    EmptyCodable.self,
                    from: "{\"foo\":7}".data(using: .utf8)!
                )
            
            ///
            XCTFail()
            
        } catch { }
    }
    
    ///
    func test_jsonData() throws {
        XCTAssertEqual(
            EmptyCodable.jsonData,
            "{}".data(using: .utf8)!
        )
    }
}

