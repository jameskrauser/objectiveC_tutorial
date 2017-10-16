//
//  basic_3.h
//  objetiveC_1_2
//
//  Created by jameskrauser on 2017/10/16.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car: NSObject
{
    int price;
}

@property int price; // property = auto generate setter and getter
+(void) printCar;
@end

