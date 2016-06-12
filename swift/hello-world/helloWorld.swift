struct HelloWorld {
    static func hello(personName: String = "") -> String {
        return "Hello, \(personName != "" ? personName : "World")!"
    }
}