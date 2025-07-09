import UIKit

@objc public protocol ObjCProviderWrapperProtocol {
    init()

    var clientID: String? { get set }

    func loginWithParams(_ params: NSDictionary?,
                         viewController: UIViewController?,
                         completion: @escaping (NSDictionary?, NSString?) -> Void)

    @objc optional func logout()
}