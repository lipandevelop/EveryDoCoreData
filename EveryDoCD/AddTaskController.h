//
//  AddTaskController.h
//  EveryDoCD
//
//  Created by Li Pan on 2016-02-03.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoCell.h"

@protocol AddTaskDelegate <NSObject> 

- (void) addTaskWithName: (NSString *)name taskDescription: (NSString *)task priorityNumber: (int32_t)priority;

@end

@interface AddTaskController : UIViewController
@property (weak, nonatomic) id <AddTaskDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UITextField *descriptionText;
@property (weak, nonatomic) IBOutlet UITextField *priorityText;
@property (weak, nonatomic) IBOutlet UIButton *addTaskButton;
@property (strong, nonatomic) NSString *nameInput;
@property (strong, nonatomic) NSString *descriptionInput;
@property (assign, nonatomic) NSString *priorityInput;
@property (strong, nonatomic) ToDoCell *toDoInfo;

@end
