//
//  ViewController.m
//  SaveUserInfo
//
//  Created by TestSmirk on 16/8/5.
//  Copyright © 2016年 TestSmirk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textview;
@property (weak, nonatomic) IBOutlet UILabel *textview2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.textview.text = @"123";
}
- (IBAction)save:(id)sender {
    NSUserDefaults *user =  [NSUserDefaults standardUserDefaults];
    
    [user setInteger:[self.textview.text integerValue] forKey:@"textview"];
}
- (IBAction)read:(id)sender {
    _textview2.text = [NSString stringWithFormat:@"%ld",(long)[[NSUserDefaults standardUserDefaults] integerForKey:@"textview"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
