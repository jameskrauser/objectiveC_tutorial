//
//  main.m
//  count_init_dealloc
//
//  Created by jameskrauser on 2017/10/26.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "obj.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        myobj *aobj = [[myobj alloc] init ];
        NSLog(@"car count = %d" , [aobj getCounts] );
        
        myobj *bobj = [[myobj alloc] init];
        NSLog(@"car count = %d" , [bobj getCounts ]);

        myobj *cobj = [[myobj alloc] init ];
        NSLog(@"car count = %d" , [cobj getCounts]);
        bobj = NULL;
        
        NSLog(@"for now car count = %d" ,[myobj Counts] );
    }
    return 0;
}
