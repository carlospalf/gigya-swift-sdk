//
//  ProviderWrapperProtocol.h
//  GigyaSwift
//
//  Created by Copilot on 09/07/2025.
//

#import <Foundation/Foundation.h>

@protocol ProviderWrapperProtocol <NSObject>
@required
- (instancetype)init;
@property (nonatomic, copy) NSString *clientID;
- (void)loginWithParams:(NSDictionary *)params
         viewController:(UIViewController *)viewController
             completion:(void (^)(NSDictionary *jsonData, NSString *error))completion;

@optional
- (void)logout;
@end