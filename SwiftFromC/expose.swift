import Foundation

@_cdecl("sum")
func sum(_ a: Int32, _ b: Int32) -> Int32 {
    a + b
}

@_cdecl("string_from_swift")
func stringFromSwift() -> UnsafePointer<CChar> {
    // let strData = "Hello, from Swift!\0".data(using: .utf8)!
    // return strData.withUnsafeBytes { bufferPtr in
    //     bufferPtr.bindMemory(to: CChar.self).baseAddress!
    // }

    UnsafePointer(strdup("🏎️ Hello, from Swift!" as String)!)
}

@_cdecl("swift_strlen")
func strLen(_ str: UnsafePointer<CChar>) -> Int32 {
    let string = String(cString: str)
    return Int32(string.count)
}

@_cdecl("swift_printstr")
func printStr(_ str: UnsafePointer<CChar>) {
    print("\u{001B}[1;31m...SWIFT HEAD...\u{001B}[0m\n" + String(cString: str))
}