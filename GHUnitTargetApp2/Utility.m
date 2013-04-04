//
//  Utility.m
//  GHUnitTargetApp2
//
//  Created by  on 13/04/04.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Utility.h"

@implementation Utility
+ (NSString *)urlencode:(NSString *)text
{
    return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL,(CFStringRef)text,NULL,(CFStringRef)@"!*'();:@&=+$,/?%#[]",kCFStringEncodingUTF8));
}

+ (NSString *)urldecode:(NSString *)text
{
    return (NSString *)CFBridgingRelease(CFURLCreateStringByReplacingPercentEscapesUsingEncoding(NULL,(CFStringRef) text,CFSTR(""),kCFStringEncodingUTF8));
}
@end
