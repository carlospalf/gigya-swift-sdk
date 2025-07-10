//
//  ProviderWrapperProtocol.h
//  GigyaSwift
//
//  Created by Copilot on 09/07/2025.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ProviderWrapperProtocol <NSObject>
@required
- (instancetype)init;
@property (nonatomic, copy) NSString * _Nullable clientID;
- (void)loginWithParams:(NSDictionary * _Nullable)params
        viewController:(UIViewController * _Nullable)viewController
            completion:(void (^)(NSDictionary * _Nullable jsonData, NSString * _Nullable error))completion;
@optional
- (void)logout;
@end

NS_ASSUME_NONNULL_END
