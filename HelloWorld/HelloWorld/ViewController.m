//
//  ViewController.m
//  HelloWorld
//
//  Created by JEONSANGIL on 2015. 7. 22..
//  Copyright (c) 2015년 Toplogic. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changeLabel:(id)sender {
    
    
    self.displayLabel.text = @"HelloWolrd";
    
    NSLog(@"HelloWorld");
    
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://samwize.com/api/poos/"
      parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             NSLog(@"JSON: %@", responseObject);
         } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"Error: %@", error);
         }];
}



@end
