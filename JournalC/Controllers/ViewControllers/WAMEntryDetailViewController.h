//
//  WAMEntryDetailViewController.h
//  JournalC
//
//  Created by Will morris on 5/20/19.
//  Copyright © 2019 devmtn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WAMEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface WAMEntryDetailViewController : UIViewController

@property (nonatomic, strong) WAMEntry* entry;

@end

NS_ASSUME_NONNULL_END
