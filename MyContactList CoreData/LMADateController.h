//
//  LMADateController.h
//  MyContactList CoreData
//
//  Created by Buck, Nicole D. on 5/19/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LMADateControllerDelegate <NSObject>

@required
-(void)dateChanged: (NSDate *) date;

@end

@interface LMADateController : UIViewController

@property (strong, nonatomic) id<LMADateControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIDatePicker *dtpDate;

@end
