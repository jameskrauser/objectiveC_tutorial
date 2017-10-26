//
//  obj.h
//  count_init_dealloc
//
//  Created by jameskrauser on 2017/10/26.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//

#ifndef obj_h
#define obj_h

#import <Foundation/Foundation.h>
@interface myobj : NSObject
-(id)   init;
-(void) dealloc;
-(int)  getCounts;
-(const NSString *) getProductName;
+(int)  Counts;
@end
#endif /* obj_h */
