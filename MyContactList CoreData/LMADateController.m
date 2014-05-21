//
//  LMADateController.m
//  MyContactList CoreData
//
//  Created by Buck, Nicole D. on 5/19/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import "LMADateController.h"
#import "LMAContactsController.h"

@interface LMAContactsController () <LMADateControllerDelegate>

@end

@implementation LMADateController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIBarButtonItem *saveButton =
    [[UIBarButtonItem alloc]
     initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveDate:)];
    [self.navigationItem setRightBarButtonItem:saveButton];
    self.title = @"Pick Birthdate";
}

-(IBAction)saveDate:(id)sender
{
    [_delegate dateChanged:[_dtpDate date]];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
