import Vapor

public extension Future where T: Response {
    public func flash(_ type: Flash.Kind, _ message: String, _ session: Session) -> Future<Response> {
        return self.map(to: Response.self) { res in
            return res.flash(type, message, session)
        }
    }
}
