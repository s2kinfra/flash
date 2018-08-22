import Vapor

public final class FlashContainer: Codable, Service {
    public var flashes: [Flash] = []
    
    public func clear() {
        flashes = []
    }
    
    public init() { }
}
