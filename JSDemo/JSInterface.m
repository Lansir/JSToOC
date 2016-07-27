//
//  JSInterface.m
//  JSDemo
//
//  Created by 呵呵嗒 on 16/7/21.
//  Copyright © 2016年 呵呵嗒. All rights reserved.
//

#import "JSInterface.h"

@implementation JSInterface
- (void) h5CallApp
{
    NSLog(@"success!");
}
- (void) h5CallApp: (NSString*) param And2: (NSString*) param2 And3: (NSString*) param3
{
    NSLog(@"test with param: %@ and param2: %@ and param3: %@", param, param2,param3);
}

@end
