import Vapor

public final class Flash: Codable {
    public enum Kind: String, Codable {
        case error
        case success
        case info
        case warning
        
        var bootstrapClass: BootstrapClass {
            switch self {
                case .error: return .danger
                case .success: return .success
                case .info: return .info
                case .warning: return .warning
            }
        }
    }
    
    enum BootstrapClass: String {
        case danger
        case warning
        case success
        case info
    }

    public var kind: Kind
    public var message: String
    public var bootstrapClass: String

    public init(kind: Kind, message: String) {
        self.kind = kind
        self.message = message
        self.bootstrapClass = kind.bootstrapClass.rawValue
    }

    public init(_ kind: Kind, _ message: String) {
        self.kind = kind
        self.message = message
        self.bootstrapClass = kind.bootstrapClass.rawValue
    }
}
