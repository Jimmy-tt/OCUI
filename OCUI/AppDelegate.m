//
//  AppDelegate.m
//  OCUI
//
//  Created by cmb on 2021/7/9.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    // Override point for customization after application launch.
//    return YES;
//}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //1.创建windows
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.tb = [[UITabBarController alloc] init];
    
    //2.初始化一个tabBar控制器
    self.vc = [[ViewController alloc] init];
    self.vc1 = [[ViewController1 alloc] init];
    self.vc2 = [[ViewController2 alloc] init];
    
    [self.vc.tabBarItem setTitle: @"首页"];
    [self.vc1.tabBarItem setTitle: @"联系人"];
    [self.vc2.tabBarItem setTitle: @"我的"];
    
    [self.tb addChildViewController: self.vc];
    [self.tb addChildViewController: self.vc1];
    [self.tb addChildViewController: self.vc2];
    
    //3.设置控制器为window的根控制器
    self.window.rootViewController = self.tb;
    
    //4.设置window为主窗口并进行显示
    [self.window makeKeyAndVisible];
    
    NSLog(@"应用程序启动");
    return YES;
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"即将从前台进入后台");
}
- (void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"已经从前台进入后台");
}
- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"即将从后台进入前台");
}
- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"已经从后台进入前台");
}
- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"应用程序被杀死或关闭");
}


@end
