//
//  main.m
//  t1
//
//  Created by jameskrauser on 2017/10/26.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//  block

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        // block style 1
        typedef NSString* (^myBlock)(int , int );
        myBlock block1;
        block1 = ^( int x , int y ){
            NSLog(@"[Block 1 ] running...");
            return [ NSString stringWithFormat:@"%d * %d = %d " , x , y , x*y  ];
        };
        NSLog(@" block1 return value is [%@]" , block1(1984,2) );
        
        // block style 2
        NSString* (^block2)(int, int ) = ^( int x,  int y ){
            NSLog(@"[Block2 ] running...");
            return [ NSString stringWithFormat:@"%d * %d = %d " , x , y , x * y  ];
        };
        NSLog(@"block2 return value is [%@]" , block2(19,2));
        
    }
    return 0;
}
