// Copyright (C) 2018 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "RLMStoreController.h"
#import "RLMReadingList.h"

NSString *RELPathForDocument(NSString *name, NSString *type) {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [[paths.lastObject stringByAppendingPathComponent:name] stringByAppendingPathExtension:type];
}

NSString * const RELDefaultStoreName = @"ReadingList";

@implementation RLMStoreController

- (NSString *)storeType  { return @"plist"; }
- (NSString *)storeName  { return RELDefaultStoreName; }
- (NSBundle *)bundle     { return [NSBundle bundleForClass:self.class]; }
- (NSString *)bundlePath { return [self.bundle pathForResource:self.storeName ofType:self.storeType]; }

- (NSString *)storePath {
    NSString *path = RELPathForDocument(self.storeName, self.storeType);
    if (![NSFileManager.defaultManager fileExistsAtPath:path]) {
        [NSFileManager.defaultManager copyItemAtPath:self.bundlePath toPath:path error:nil];
    }
    return path;
}

- (RLMReadingList *)fetchedReadingList {
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:self.storePath];
    return [RLMReadingList modelObjectWithDictionary:dict];
}

- (void)saveReadingList:(RLMReadingList *)readingList {
    [readingList.dictionaryRepresentation writeToFile:self.storePath atomically:YES];
}

@end
