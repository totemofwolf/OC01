//
//  main.m
//  OC01
//
//  Created by wand on 14-9-7.
//  Copyright (c) 2014年 wand. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cirecle.h"

void
testNSLog(){
    //%@: Object
    NSString * str = @"Hello";
    NSLog(@"NSString: %@", str);
    
    NSNumber * num = [NSNumber numberWithInt:100];
    NSLog(@"NSNumber: %@", num);
    
    NSInteger intValues = -999; //此为int类型，而非类
    NSLog(@"int: %ld", (long)intValues);
    
    //unsigned int,将负数赋给无符号整型变量，会出现4G问题
    unsigned int uintvalue = 1000;
    unsigned int uintvalues = -1000;
    NSLog(@"unsigned int: %u, %u", uintvalue, uintvalues);
    
    float floatValue = 20.20;
    double doubleValue = 50.55;
    NSLog(@"float: %f, double: %f", floatValue, doubleValue);
    
    // test pointer
    char * p = "test pointer";
    NSLog(@"pointer: %p", p); //location:0x100000f6e
    NSLog(@"char * p: %s", p); //p所指向的字符串的内容
    
    // %c: char; %C: unichar
    char aChar = 'G';
    unichar aUnichar = 0x4f60;//俩个字节，L'你'
    NSLog(@"char: %c", aChar);
    NSLog(@"unichar: %C", aUnichar);
    
    // %s: C string(bytes); %S: C string(unichar)
    NSLog(@"C string(bytes) : %s", p);
    const unichar pUnichar[] = {L'你', L'好', 0x0000}; //添加const;相当于'\0'
    NSLog(@"C string(unicahr) : %S", pUnichar);
    
    // %lld: long long; %llu: unsigned long long; %lf: long double
    long int longint1 = 1212454667;
    NSLog(@"%ld : ", longint1);
    
    long long llVar = -12348584797;
    NSLog(@"long long: %lld", llVar);
   
    unsigned long long ullVar = 12343546576868;
    NSLog(@"unsigned llvar: %llu", ullVar);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        testNSLog();
    }
    
    Circle * circle = [[Circle alloc] init];
    [circle print];
//    [circle];
    
    return 0;
}
