//
//  AppDelegate.h
//  OCUI
//
//  Created by cmb on 2021/7/9.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITabBarController *tb;
@property (nonatomic) ViewController *vc;
@property (nonatomic) ViewController1 *vc1;
@property (nonatomic) ViewController2 *vc2;

@end

