//
//  WAMEntry.h
//  JournalC
//
//  Created by Will morris on 5/20/19.
//  Copyright © 2019 devmtn. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WAMEntry : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* bodyText;
@property (nonatomic, readonly) NSString* timestamp;

- (instancetype) initWithTitle:(NSString*)title bodyText:(NSString*)bodyText timestamp:(NSString*)timestamp;

@end

NS_ASSUME_NONNULL_END
