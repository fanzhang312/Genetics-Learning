//
//  MasterViewController.m
//  Genetics Learning
//
//  Created by Zhiqi Chen on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"
#import "DetailViewController6.h"

@implementation MasterViewController
@synthesize list = _list;
//@synthesize detailViewController = _detailViewController;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Genetics Learning version 1.0";
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // initial contents' title
    list = [[NSMutableArray alloc] init];
    [list addObject:@"1. Introduction: What is genetics?"];
    [list addObject:@"2. DNA Structure: What is DNA?"];
    [list addObject:@"3. Genes and Proteins: How do genes work?"];
    [list addObject:@"4. Transcription & Translation"];
    [list addObject:@"5. DNA Replication"];
    [list addObject:@"6. Polymerase chain Reaction"];
    [list addObject:@"7. PCR in virtual PCR laboratory"];
    
    //self.detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    
    // set the back button text for the navigation bar
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] 
                                   initWithTitle:@"Table of Contents" 
                                   style:UIBarButtonItemStyleBordered 
                                   target:nil 
                                   action:nil]; 
    [[self navigationItem] setBackBarButtonItem:backButton]; 
    
    // set background image
    //self.tableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"DNA.png"]];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"DNA.png"]];
    self.tableView.backgroundView = imageView;
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [list count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.textLabel.text = [list objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    //UIImageView *bgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Transparent_Bar.png"]];
    //cell.contentView.backgroundColor = [UIColor redColor];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    
    if (indexPath.row == 4||indexPath.row == 5) {
        if (indexPath.row == 4) {
            DetailViewController *viewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
            [self.navigationController pushViewController:viewController animated:YES];
        }else{
            DetailViewController6 *viewController = [[DetailViewController6 alloc] initWithNibName:@"DetailViewController6" bundle:nil];
            [self.navigationController pushViewController:viewController animated:YES];

        }
    }else {
        NSString *msg = [[NSString alloc] initWithFormat:@"The Section is under development. Please choose 5 or 6."];
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Oops" 
                              message:msg 
                              delegate:self 
                              cancelButtonTitle:@"OK" 
                              otherButtonTitles:nil];
        [alert show];
    }
}

-(void) tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    //self.detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if (indexPath.row == 4||indexPath.row == 5) {
        DetailViewController *viewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
        [self.navigationController pushViewController:viewController animated:YES];
    }else{
        NSString *msg = [[NSString alloc] initWithFormat:@"The Section is under development. Please choose 5 or 6."];
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Oops" 
                              message:msg 
                              delegate:self 
                              cancelButtonTitle:@"OK" 
                              otherButtonTitles:nil];
        [alert show];
    }
}

@end
