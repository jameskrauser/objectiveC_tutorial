//  Created by jameskrauser on 2017/10/31.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//  Demo Strong and Weak
//  you can switch property to check result

#import <Foundation/Foundation.h>

@interface Driver:NSObject
@property NSString *name;
@end
@implementation Driver
@end

@interface Car :NSObject
//@property(nonatomic , strong) Driver *objDriver;
@property(nonatomic , weak) Driver *objDriver;
@end
@implementation Car;
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *myCar1 = [Car new];
        Driver *myDriver1 = [Driver new];
        myDriver1.name = @"james";
        myCar1.objDriver = myDriver1;
        myDriver1 = NULL;
        NSLog(@"driver is %@ " , myCar1.objDriver.name);
    }
    return 0;
}
