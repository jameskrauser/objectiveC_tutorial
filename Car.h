//
//  Car.h. this file for objectiveC_1_1
//  objectiveC_1_1
//
//  Created by jameskrauser on 2017/10/16.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car: NSObject
{
    int price;
}

//instance method
-(int) price;
-(void) setPrice: (int) inputp;

//class method
+(void) printCarInfo;

@end

