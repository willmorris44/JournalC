//
//  WAMEntryDetailViewController.m
//  JournalC
//
//  Created by Will morris on 5/20/19.
//  Copyright © 2019 devmtn. All rights reserved.
//

#import "WAMEntryDetailViewController.h"
#import "WAMEntryController.h"

@interface WAMEntryDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *timestampLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation WAMEntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Entry";

    self.titleTextField.text = self.entry.title;
    self.bodyTextView.text = self.entry.bodyText;
    self.timestampLabel.text = self.entry.timestamp;
    
    if (self.entry != nil) {
        self.saveButton.enabled = false;
        self.titleTextField.enabled = false;
        self.bodyTextView.userInteractionEnabled = false;
    }
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd hh:mm:ss a"];
    NSLog(@"%@",[dateFormatter stringFromDate:[NSDate date]]);
    
    NSString *currentTime = [dateFormatter stringFromDate:[NSDate date]];
    
    [[WAMEntryController shared] addEntry:self.titleTextField.text bodyText:self.bodyTextView.text timestamp:currentTime];
    
    [self.navigationController popViewControllerAnimated:true];
}

@end
