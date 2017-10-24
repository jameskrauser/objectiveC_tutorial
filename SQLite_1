//
//  main.m
//  SQLite
//
//  Created by jameskrauser on 2017/10/24.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//  Demo read record from SQLite 
//  Data Reference from Book Objective-C 程式設計入門
//  books.db file you must put at /usr/yourUsernane/SQLitebooks.db

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface SQLiteDatabase : NSObject
{
    sqlite3 *database;
}
- (id)initWithPath:(NSString *)path;
- (NSArray *)performQuery:(NSString *)query;
- (void) closeDatabase;
@end

@implementation SQLiteDatabase
- (id)initWithPath:(NSString *)path {
    if (self = [super init]) {
        sqlite3 *dbConnection;
        if (sqlite3_open([path UTF8String], &dbConnection) != SQLITE_OK) {
            NSLog(@"[SQLITE] can't open database！");
            return nil;
        } else {
            NSLog(@"[SQLITE] open database success！");
        }
        database = dbConnection;
    }
    return self;
}

-(NSArray *)performQuery:(NSString *)query {
    sqlite3_stmt *statement = nil;
    const char *sql = [query UTF8String];
    
    if (sqlite3_prepare_v2(database, sql, -1, &statement, NULL) != SQLITE_OK) {
        NSLog(@"[SQLITE] can't query data！");
    } else {
        NSMutableArray *result = [NSMutableArray array];
        while (sqlite3_step(statement) == SQLITE_ROW) {
            
            //fetch each record's column
            NSMutableArray *row = [NSMutableArray array];
            char * name =  (char *)sqlite3_column_text(statement, 0);
            id value = [NSString  stringWithUTF8String:name];
            [row addObject:value];
            
            int bookID = sqlite3_column_int(statement, 1);
            value = [NSNumber numberWithInt:bookID];
            [row addObject:value];
            
            char * author =  (char *)sqlite3_column_text(statement, 2);
            value = [NSString  stringWithUTF8String:author];
            [row addObject:value];
            
            char * publisher =  (char *)sqlite3_column_text(statement, 3);
            value = [NSString  stringWithUTF8String:publisher];
            [row addObject:value];
            
            int price = sqlite3_column_int(statement, 4);
            value = [NSNumber numberWithInt:price];
            [row addObject:value];
            
            //save to column
            [result addObject:row];
        }
        
        //release statement
        sqlite3_finalize(statement);
        return result;
    }
    return nil;
}

- (void) closeDatabase{
    if (database){
        sqlite3_close(database);
    }
}
@end

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSString *homePath = NSHomeDirectory();
        NSArray *paths = NSSearchPathForDirectoriesInDomains(
                                                             NSDocumentDirectory,
                                                             NSUserDomainMask,
                                                             YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        NSLog(@"Put your SQLite file books.db at %@" , documentsDirectory );
        NSString *src_DB = [NSString stringWithFormat:@"%@/SQLitebooks.db" , homePath];
        
        SQLiteDatabase *database = [[SQLiteDatabase alloc] initWithPath:src_DB];
        
        //query table
        NSArray *result = [database performQuery:@"SELECT * FROM booklist"];
        NSLog(@" ---  record in SQLite DB SQLitebooks.dbSQLitebooks.db ---");
        for (NSArray *row in result) {
            int bookID = [[row objectAtIndex:1] intValue];
            NSString *author = [row objectAtIndex:0];
            NSLog(@"%i  :   %@ ", bookID,author);
        }
        [database closeDatabase];
    }
    return 0;
}




