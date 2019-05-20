//
//  WAMEntryListTableViewController.m
//  JournalC
//
//  Created by Will morris on 5/20/19.
//  Copyright © 2019 devmtn. All rights reserved.
//

#import "WAMEntryListTableViewController.h"
#import "WAMEntryController.h"
#import "WAMEntryDetailViewController.h"

@interface WAMEntryListTableViewController ()

@end

@implementation WAMEntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[WAMEntryController shared] entries] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    WAMEntry *entry = [[[WAMEntryController shared] entries] objectAtIndex:indexPath.row];
    
    cell.textLabel.text = entry.title;
    cell.detailTextLabel.text = entry.timestamp;
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        WAMEntry *entry = [[[WAMEntryController shared] entries] objectAtIndex:indexPath.row];
        [[WAMEntryController shared] removeEntry:entry];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"editEntrySegue"]) {
        NSIndexPath* indexPath = self.tableView.indexPathForSelectedRow;
        WAMEntryDetailViewController *destinationVC = [segue destinationViewController];
        WAMEntry *entry = [[[WAMEntryController shared] entries] objectAtIndex:indexPath.row];
        destinationVC.entry = entry;
    }
}

@end
