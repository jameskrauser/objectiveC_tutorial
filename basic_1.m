//
//  main.m
//  obj_test
//
//  Created by jameskrauser on 2017/10/16.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//
// ---- start define , you can put in .h file
#import <Foundation/Foundation.h>

@interface Rectangle:NSObject
@property int height;
@property int width;
@property int area;
-(void) showArea;
@end
//  --- end of define


// -- start of implementation
@implementation Rectangle;
-(void) showArea {
    _area = _height * _width;
    NSLog( @"height = %i , width = %i , area = %i " , _height , _width , _area );
}
@end
// -- end of implementation

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Rectangle *reg = [Rectangle new];
        reg.height = 10;
        reg.width = 20;
        [reg showArea];
        
    }
    return 0;
}
