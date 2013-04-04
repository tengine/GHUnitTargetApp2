//
//  Utility.h
//  GHUnitTargetApp2
//
//  Created by  on 13/04/04.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utility : NSObject
+ (NSString *)urlencode:(NSString *)text;
+ (NSString *)urldecode:(NSString *)text;
@end
