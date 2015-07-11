//
//  main.m
//  NSStringUnion
//
//  Created by kingkong999yhirose on 2015/07/11.
//  Copyright (c) 2015年 kingkong999yhirose. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Union.h"

NSString *test1() {
    return [NSString unionStrFromArguments:@"test",@" ",@"hoge : ",@[@(2015),@"/",@"07/0",[NSNull null],@""],nil,@(1),[NSNull null],[NSStringUnionEndPoint new]];
}

NSString *test2() {
    NSArray *arr = @[@"test",@(2),@" ",@"fuga : ",@(2015),@"/",@"07/0",@(2),[NSNull null]];
    NSArray *arr2 = @[[NSNull null],@"WRYYYYY",@"jojo",@(333333),[NSNull null],@""];
    return [NSString unionStrFromArray:@[arr,arr2]];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"begin test --");
        NSLog(@"%@",test1());
        NSLog(@"%@",test2());
        NSLog(@"end test --");
    }
    return 0;
}

