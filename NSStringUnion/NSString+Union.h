//
//  NSString+Union.h
//  Practice
//
//  Created by kingkong999yhirose on 2015/07/04.
//  Copyright (c) 2015年 kingkong999yhirose. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSStringUnionEndPoint : NSObject

@end

@interface NSString (Union)

+ (nonnull NSString*)unionStrFromArguments:(nullable id)values,...; // Require NSStringUnionEndPoint instance termination
+ (nonnull NSString*)unionStrFromArray:(nullable NSArray*)values;

@end
