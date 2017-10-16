//
//  main.m
//  basic__3.m
//
//  Created by jameskrauser on 2017/10/16.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//  Use @property and @synthesize to auto generate setter/getter
#import "basic_3.h"

@implementation Car
@synthesize price;

/*
//generate yourself setter/getter
//you can uncomment this part
-(void) setPrice:(int) inputp
{
    price = inputp * 2;
}
*/

+(void)printCar
{
    NSLog(@"hello this is yourself printCar.");
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *ptr = [[Car alloc ] init ];
        //setter
        [ptr setPrice:300];
        NSLog(@"the price is %d" , [ptr price]);
        ptr.price = 200;
        NSLog(@"the new price is %d" , ptr.price);
        ptr = nil;
    }
    return 0;
}
