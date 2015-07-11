//
//  NSString+Union.m
//  Practice
//
//  Created by kingkong999yhirose on 2015/07/04.
//  Copyright (c) 2015年 kingkong999yhirose. All rights reserved.
//

#import "NSString+Union.h"

@implementation NSStringUnionEndPoint

@end

@implementation NSString (Union)

+ (nonnull NSString*)unionStrFromArguments:(nullable id)values,... {
    NSMutableString *unionStr = [NSMutableString string];
    
    va_list argumentList;
    va_start(argumentList, values);
    
    id value = values;
    
    while (![value isMemberOfClass:[NSStringUnionEndPoint class]]) {
        [self unionString:unionStr value:value];
        value = va_arg(argumentList, id);
    }
    
    va_end(argumentList);
    
    if (!unionStr.length) { return @""; }
    return unionStr;
}

+ (nonnull NSString*)unionStrFromArray:(nullable NSArray*)values {
    NSMutableString *unionStr = [NSMutableString string];
    for (id value in values) {
        [self unionString:unionStr value:value];
    }
    if (!unionStr.length) { return @""; }
    return unionStr;
}

#pragma mark - Helper 

+ (void)unionString:(NSMutableString*)unionStr value:(id)value{
    if (value == nil) {}
    else if (value == [NSNull null]) {}
    else if ([value isKindOfClass:[NSNumber class]]) { [unionStr appendString:((NSNumber*)value).stringValue]; }
    else if ([value isKindOfClass:[NSArray class]]) {
        for (id val in value) {
            [self unionString:unionStr value:val];
        }
    }
    else if ([value isKindOfClass:[NSString class]]) {
        if (((NSString*)value).length) { [unionStr appendString:value]; }
    }
    else {
        NSLog(@"unexception instance %@",[value description]);
    }
}

@end
