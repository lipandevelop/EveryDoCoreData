//
//  AddTaskController.m
//  EveryDoCD
//
//  Created by Li Pan on 2016-02-03.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import "AddTaskController.h"
#import "ToDo.h"

@interface AddTaskController () <UITextFieldDelegate>

@end

@implementation AddTaskController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *dict = [defaults objectForKey:@"toDoDefault"];
    self.nameText.text = dict[@"name"];
    self.descriptionText.text = dict[@"task"];
    self.priorityText.text = [NSString stringWithFormat:@"%@", dict[@"priority"]];
    [self.nameText becomeFirstResponder];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.nameText resignFirstResponder];
    [self.descriptionText resignFirstResponder];
    [self.priorityText resignFirstResponder];
}

- (IBAction)addButton:(id)sender {
    self.nameInput = self.nameText.text;
    self.descriptionInput = self.descriptionText.text;
    
    self.priorityInput = self.priorityText.text;
    int32_t priority = (self.priorityInput).intValue;
    [self.delegate addTaskWithName:self.nameInput taskDescription:self.descriptionInput priorityNumber:priority];
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
