import UIKit
import Gigya

@objc public class ProviderWrapperAdapter: NSObject, ObjCProviderWrapperProtocol {
    private static var factory: (() -> ProviderWrapperProtocol)?

    private var wrapped: ProviderWrapperProtocol!

    @objc public static func registerFactory(_ factory: @escaping () -> ProviderWrapperProtocol) {
        self.factory = factory
    }

    @objc public required override init() {
        guard let providerFactory = Self.factory else {
            fatalError("ProviderWrapperAdapter factory not registered.")
        }

        self.wrapped = providerFactory()
        super.init()
    }

    public var clientID: String? {
        get { return wrapped.clientID }
        set { wrapped.clientID = newValue }
    }

    public func loginWithParams(_ params: NSDictionary?,
                                 viewController: UIViewController?,
                                 completion: @escaping (NSDictionary?, NSString?) -> Void) {
        let swiftParams = params as? [String: Any]
        wrapped.login(params: swiftParams, viewController: viewController) { jsonData, error in
            completion(jsonData as NSDictionary?, error as NSString?)
        }
    }

    public func logout?() {
        wrapped.logout?()
    }
}