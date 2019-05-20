//
//  WAMEntryController.m
//  JournalC
//
//  Created by Will morris on 5/20/19.
//  Copyright © 2019 devmtn. All rights reserved.
//

#import "WAMEntryController.h"

@interface WAMEntryController()

@property (nonatomic, strong, readwrite) NSMutableArray* internalEntries;

@end

@implementation WAMEntryController

+ (WAMEntryController*)shared {
    static WAMEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [WAMEntryController new];
    });
    return shared;
}

- (instancetype) init {
    self = [super init];
    if (self) {
        _internalEntries = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)entries {
    return self.internalEntries;
}

- (void) addEntry:(NSString *)title bodyText:(NSString*)bodyText timestamp:(NSString*)timestamp {
    WAMEntry * newEntry = [[WAMEntry alloc] initWithTitle:title bodyText:bodyText timestamp:timestamp];
    [self.internalEntries addObject:newEntry];
}

- (void) removeEntry:(WAMEntry *)entry {
    [self.internalEntries removeObject:entry];
}

@end
