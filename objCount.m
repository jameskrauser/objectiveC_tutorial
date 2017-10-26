//
//  obj.m
//  count_init_dealloc
//
//  Created by jameskrauser on 2017/10/26.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//

#import "obj.h"

@implementation myobj
static int counter;
const NSString *productName = @"james";

+(int) Counts {
    return counter;
}

-(id) init {
    self = [super init];
    if( self != nil ) {
        counter++;
    }
    return self;
}

-(void) dealloc {
    counter--;
}

-(int)getCounts {
    return counter;
}

-(const NSString*) getProductName {
    return productName;
}

@end

