//
//  UtilityTest.m
//  GHUnitTargetApp2
//
//  Created by  on 13/04/04.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "UtilityTest.h"

@implementation UtilityTest

- (void)test_urlencode
{
    NSString *url1 = @"%e3%83%86%e3%82%b9%e3%83%88%e3%81%9d%e3%81%ae%e4%b8%80";
    url1 = [url1 uppercaseString];
    NSString *url2 = [NSString stringWithString:[Utility urlencode:@"テストその一"]];
    GHAssertEqualObjects(url1, url2, @"match!");
    
    NSString *url3 = @"%e3%81%93%e3%82%8c%e3%82%82%e3%80%8c%e3%81%a6%e3%81%99%e3%81%a8%e3%80%8d%e3%81%a0%e3%81%a3%e3%81%9f%e3%82%8a";
    url3 = [url3 uppercaseString];
    NSString *url4 = [NSString stringWithString:[Utility urlencode:@"これも「てすと」だったり"]];
    GHAssertEqualObjects(url3, url4, @"match!");
}

- (void)test_urldecode
{
    NSString *url1 = [NSString stringWithString:[Utility urldecode:@"%e3%83%86%e3%82%b9%e3%83%88%e3%81%9d%e3%81%ae%e4%b8%80"]];
    url1 = [url1 uppercaseString];
    NSString *url2 = @"テストその一";
    GHAssertEqualObjects(url1, url2, @"match!");
    
    NSString *url3 = [NSString stringWithString:[Utility urldecode:@"%e3%81%93%e3%82%8c%e3%82%82%e3%80%8c%e3%81%a6%e3%81%99%e3%81%a8%e3%80%8d%e3%81%a0%e3%81%a3%e3%81%9f%e3%82%8a"]];
    url3 = [url3 uppercaseString];
    NSString *url4 = @"これも「てすと」だったり";
    GHAssertEqualObjects(url3, url4, @"match!");
}

@end
