//
//  WAMEntry.m
//  JournalC
//
//  Created by Will morris on 5/20/19.
//  Copyright © 2019 devmtn. All rights reserved.
//

#import "WAMEntry.h"

@implementation WAMEntry

- (instancetype) initWithTitle:(NSString *)title bodyText:(NSString *)bodyText timestamp:(NSString *)timestamp {
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = timestamp;
    }
    return self;
}

@end
