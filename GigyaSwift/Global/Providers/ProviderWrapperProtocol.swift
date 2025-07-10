@objc public protocol ProviderWrapperProtocol {
    init()

    var clientID: String? { get set }

    func login(_ params: NSDictionary?, viewController: UIViewController?, completion: @escaping @convention(block) (NSDictionary?, NSString?) -> Void)

    @objc optional func logout()
}