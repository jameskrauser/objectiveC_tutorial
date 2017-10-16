//
//  main.m
//  objectiveC_1_1
//
//  Created by jameskrauser on 2017/10/16.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//  you need to write setter/getter by yourself 
//  next demo use the @property and @synthesize to deal setter/getter

#import "Car.h"

@implementation Car

// -() instance method
-(int) price
{
    return price;
}

-(void) setPrice:(int)inputp
{
    price = inputp;
}

// +()  calss method
+(void)printCarInfo
{
    NSLog(@"Hello, this is car info");
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //class method call dont need generate instance
        [Car printCarInfo];
        
        
        //instance method
        Car *ptr = [ [Car alloc] init ];
        [ptr setPrice:20];
        NSLog(@"the price of car is %i " , [ptr price]);
      
        ptr = nil; //ARC will release
        
        NSLog(@" --- finish --- ");
    }
    return 0;
}
