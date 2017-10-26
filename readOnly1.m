//
//  main.m
//  readonly
//
//  Created by jameskrauser on 2017/10/26.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//  Set data to readonly1
//. only provide getter  
//  

#import <Foundation/Foundation.h>

@interface BMI : NSObject
-(void) show;
-(id) initWithHeight:(double) x andWeight:(double) y;
@end

@implementation BMI
{
    double height;
    double weight;
}

//Getter method
-(double)height{
    return height;
}
//Getter method
-(double)weight
{
    return weight;
}

-(void ) show{
    double result;
    result = weight / pow( height/100 , 2 );
    if(result >=18.5 && result < 24 ) NSLog(@"weight is normal");
    if(result >=24 && result <27) NSLog(@"fat little");
    if(result >=30 && result <35) NSLog(@"fat middle");
}

-(id) initWithHeight:(double)x andWeight:(double)y
{
    self = [ super init ];
    if(!self) return nil;
    height = x;
    weight = y;
    return self;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double mHeight;
        double mWeight;
        
        NSLog(@"input your height");scanf("%lf" , &mHeight);
        NSLog(@"input your weight");scanf("%lf" , &mWeight);
        
        BMI *yourBMI =[ [BMI alloc ] initWithHeight:mHeight andWeight:mWeight ];
        
        NSLog(@"\n your bmi is ");
        [yourBMI show];
        
        
        
    }
    return 0;
}
