//
//  DetailViewController.m
//  EveryDoCD
//
//  Created by Li Pan on 2016-02-03.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tasktitle.text = self.detailItem.name;
    self.taskdescription.text = self.detailItem.task;
    self.priority.text = [NSString stringWithString:@(self.detailItem.priority).stringValue];
    self.priority.textColor = [UIColor colorWithHue:self.detailItem.priority * 12.0/360.0 saturation:1.0 brightness:1.0 alpha:1.0];
    if (self.detailItem.isComplete) {
        self.status.text = @"Done";
        self.status.textColor = [UIColor greenColor];
    }
    else if (!self.detailItem.isComplete) {
        self.status.text = @"Active";
        self.status.textColor = [UIColor redColor];
    }
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
