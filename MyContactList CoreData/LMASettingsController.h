//
//  LMASettingsController.h
//  MyContactList CoreData
//
//  Created by Buck, Nicole D. on 5/19/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface LMASettingsController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *pckSortField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmtSortField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmtAscending;
@property (weak, nonatomic) IBOutlet UISwitch *swAscending;
- (IBAction)sortDirectionChanged:(id)sender;

@end
