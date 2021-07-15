//
//  ViewController.m
//  OCUI
//
//  Created by cmb on 2021/7/9.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UILabel *label;
@property UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.label = [[UILabel alloc] init];
    self.btn = [[UIButton alloc] init];
    
    [self.label setText: @"Label"];
    [self.label setFrame: CGRectMake(60, 60, 100, 30)];
    [self.label setBackgroundColor: [UIColor redColor]];
    
    [self.btn setTitle: @"Click" forState: UIControlStateNormal];
    [self.btn setFrame: CGRectMake(90, 90, 100, 30)];
    [self.btn setTitleColor: [UIColor redColor] forState: UIControlStateNormal];
    
    [self.btn addTarget: self action: @selector(onClick:) forControlEvents: UIControlEventTouchUpInside];
    
    [self.view addSubview: self.label];
    [self.view addSubview: self.btn];
    

//    UILabel *label = [[UILabel alloc] init];
//    [label setFrame: CGRectMake(30, 30, 100, 30)];
//    [label setBackgroundColor: [UIColor redColor]];
//
//    [self.view addSubview: label];
    
}

- (void) onClick: (UIButton *) sender{
    [self.label setText: @"Hello world"];
    [self.label setBackgroundColor: [UIColor greenColor]];
}


@end
