//
//  WAMEntryController.h
//  JournalC
//
//  Created by Will morris on 5/20/19.
//  Copyright © 2019 devmtn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WAMEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface WAMEntryController : NSObject

@property (nonatomic, readonly) NSArray* entries;

+ (WAMEntryController *) shared;

- (void) addEntry:(NSString *)title bodyText:(NSString*)bodyText timestamp:(NSString*)timestamp;

- (void) removeEntry:(WAMEntry *)entry;

@end

NS_ASSUME_NONNULL_END
