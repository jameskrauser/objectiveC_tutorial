//  Created by jameskrauser on 2017/10/31.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//  Demo method self 

#import <Foundation/Foundation.h>
@interface xPoint:NSObject
@property int x;
@property int y;
@end
@implementation xPoint
@end

@interface xLine:NSObject
@property xPoint *p1;
@property xPoint *p2;
-(double) length;
@end

@implementation xLine
-(id) init {
    self.p1 = [xPoint new];
    self.p2 = [xPoint new];
    return self;
}
-(double) length {
    return sqrt( pow( self.p2.x - self.p1.x , 2  ) + pow( self.p2.y - self.p1.y , 2 ));
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        xLine *line = [xLine new];
        line.p1.x = 10;
        line.p2.y = 8 ;
        line.p2.x = 14;
        line.p2.y = 11;
        
        NSLog(@"length is %f" , [line length] );
        
    }
    return 0;
}
