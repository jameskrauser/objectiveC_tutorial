//
//  main.m
//  readonly
//
//  Created by jameskrauser on 2017/10/26.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//  Set data to readonly2
//  use property(readonly) to make readOnly

#import <Foundation/Foundation.h>

@interface BMI : NSObject
@property(readonly) double height;
@property(readonly) double weight;
-(void) show;
-(id) initWithHeight:(double) x andWeight:(double) y;
@end

@implementation BMI
-(void) show{
    double result;
    result = _weight / pow(_height/100,2);
    
    if(result < 18.5) NSLog(@"to think");
    if(result >= 18.5 && result < 24 ) NSLog(@"nomal");
    if(result >= 24 && result < 27 ) NSLog(@"little fat");
    if(result >= 30 && result < 35 ) NSLog(@"middle fat");
}

-(id) initWithHeight:(double)x andWeight:(double)y
{
    self = [super init];
    if ( !self ) return nil;
    
    _height = x;
    _weight = y;
    return self;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double mHeight;
        double mWeight;
        
        NSLog(@"input your hight:"); scanf("%lf",&mHeight);
        NSLog(@"input your weight:"); scanf("%lf",&mWeight);
        
        BMI *yourBMI = [ [BMI alloc] initWithHeight:mHeight andWeight:mWeight ];
        NSLog(@"you BMI is ");
        [yourBMI show];
        
    }
    return 0;
}
