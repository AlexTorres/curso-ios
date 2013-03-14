//
//  CUViewController.m
//  NavigationExample
//
//  Created by Alex on 11/03/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "CUViewController.h"

@interface CUViewController ()

@end

@implementation CUViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tableArray = @[@"cali",@"medellin",@"bogota",@"barranquilla"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section
{
    return tableArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.textLabel.text = [tableArray objectAtIndex:[indexPath row]];
    
    // Configure the cell...
       
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"go_to_detail" sender:self];    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CUDetailViewController *dvc = segue.destinationViewController;
    NSIndexPath * indexPath = mytable.indexPathForSelectedRow;
    [dvc setCityText:[tableArray objectAtIndex:[indexPath row]]];
    dvc.title = [tableArray objectAtIndex:[indexPath row]];
}
@end
