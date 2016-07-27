//
//  JSInterface.h
//  JSDemo
//
//  Created by 呵呵嗒 on 16/7/21.
//  Copyright © 2016年 呵呵嗒. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EasyJSWebViewProxyDelegate.h"

@interface JSInterface : NSObject
- (void) h5CallApp;
- (void) h5CallApp:(NSString*) param And2: (NSString*) param2 And3: (NSString*) param3;

@end
