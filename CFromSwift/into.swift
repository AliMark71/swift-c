import Foundation

typealias CString = UnsafePointer<CChar>

@_extern(c)
func sum(_ a: Int32, _ b: Int32) -> Int32

@_extern(c, "string_from_c")
func stringFromC() -> CString

@_extern(c, "c_strlen")
func cStrlen(_ str: CString) -> Int32

@_extern(c, "c_printstr")
func cPrintStr(_ str: CString)


@main
enum main {
    static func main() {
        print("Hello, World!\n\(sum(34, 35)) times"); 
        let cStrPtr = stringFromC()
        let cStr = String(cString: cStrPtr)
        let msg = "\"\(cStr)\"\nC says it's \(cStrlen(cStrPtr)) chars long\nwhile I say it's \(cStr.count) chars long"
        
        cPrintStr(msg.cStr())
        cPrintStr(stringFromC())
    }
}


extension String {
    func cStr() -> CString {
        CString(strdup(self))
    }
}