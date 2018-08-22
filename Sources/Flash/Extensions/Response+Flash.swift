import Vapor

public extension Response {
    public func flash(_ type: Flash.Kind, _ message: String, _ session: Session) -> Response {
        let flash = Flash(type, message)
        let jsonEncoder = JSONEncoder()
        if let flashData = try? jsonEncoder.encode(flash) {
            let stringData = String(data: flashData, encoding: .utf8)
            session["_flash"] = stringData
        }

        return self
    }
}
