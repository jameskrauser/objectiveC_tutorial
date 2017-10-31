//  Created by jameskrauser on 2017/10/31.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//  Demo @property copy
//  you can switch property had assign to check different result

#import <Foundation/Foundation.h>
@interface james:NSObject
//@property ( nonatomic , copy) NSString *jvalue;
@property( nonatomic , assign ) NSString *jvalue;
@end
@implementation james;
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        james *myObj = [ [james alloc] init ];
        NSMutableString *mutable_value = [ NSMutableString stringWithString:@"value123" ];
        
        // set CarType to object myBMW's CarType
        NSLog(@"set CarType to object myBMW's CarType");
        myObj.jvalue = mutable_value;
        NSLog(@"%@" , myObj.jvalue );
        
        //change NSMutableString CarType value to BMW 1 5 door
        NSLog(@"change NSMutableString CarType value");
        [ mutable_value setString:@"value456" ];
        
        NSLog(@"------ result value ------");
        NSLog(@"    mutable_value= %@", mutable_value);
        NSLog(@"    myBMW.jvalue= %@", myObj.jvalue  );
        
    }
    return 0;
}
