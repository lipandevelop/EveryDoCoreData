//
//  AddTaskController.m
//  EveryDoCD
//
//  Created by Li Pan on 2016-02-03.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import "AddTaskController.h"

@interface AddTaskController () <UITextFieldDelegate>

@end

@implementation AddTaskController

- (void)viewDidLoad {
    [super viewDidLoad];
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
    self.priorityText.text = [NSString stringWithString:@(self.priorityInput).stringValue];
    //self.priceField = self.priorityInput.text.intValue;
    [self.delegate addTaskWithName:self.nameInput taskDescription:self.descriptionInput priorityNumber:self.priorityInput];
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
