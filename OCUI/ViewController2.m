//
//  ViewController2.m
//  OCUI
//
//  Created by cmb on 2021/7/12.
//

#import "ViewController2.h"

@interface ViewController2 ()
@property (nonatomic) NSUInteger len;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.name = [[UILabel alloc] init];
    self.tf = [[UITextField alloc] init];
    self.descript = [[UILabel alloc] init];
    self.tv = [[UITextView alloc] init];
    self.btn = [[UIButton alloc] init];
    self.status = YES;
    
    //Label
    [self.name setText: @"姓名"];
    [self.name setTextColor: [UIColor blackColor]];
    [self.name setFrame: CGRectMake(30, 60, 60, 20)];
    
    //TextField
    [self.tf setFrame: CGRectMake(30, 90, 180, 20)];
    [self.tf setPlaceholder: @"请输入你的姓名"];
    
    [self.tf addTarget: self action:@selector(textFieldShouldReturn:) forControlEvents: UIControlEventEditingDidEndOnExit];
    
    //Label
    [self.descript setText: @"描述"];
    [self.descript setTextColor: [UIColor blackColor]];
    [self.descript setFrame: CGRectMake(30, 130, 60, 20)];
    
    //TextView
    [self.tv setFrame:CGRectMake(30, 160, 180, 180)];
    [self.tv setText: @"XXX, 这是一段描述，你是一位致力于开发优秀APP的员工。这是一段描述，你是一位致力于开发优秀APP的员工。这是一段描述，你是一位致力于开发优秀APP的员工。这是一段描述，你是一位致力于开发优秀APP的员工。"];
    
    //Button
    [self.btn setTitle: @"确定" forState: UIControlStateNormal];
    [self.btn setFrame: CGRectMake(30, 360, 60, 20)];
    [self.btn setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
    
    [self.btn addTarget: self action:@selector(onClick:) forControlEvents: UIControlEventTouchUpInside];
    
    [self.view addSubview: self.name];
    [self.view addSubview: self.tf];
    [self.view addSubview: self.descript];
    [self.view addSubview: self.tv];
    [self.view addSubview: self.btn];
    
}

- (BOOL) textFieldShouldReturn: (UITextField *) textField{
    NSLog(@"TextFile改变为\"%@\"", [self.tf text]);
    [self.view endEditing:YES];
    return YES;
}

- (IBAction)backgroundTap:(id)sender {
    [self.tf resignFirstResponder];
}

- (void) onClick: (UIButton *) sender{
    NSLog(@"Final TextField is %@", self.tf.text);
    NSString *des = [self.tv text];
    if(self.status){
        des = [des substringFromIndex: 3];
        self.status = NO;
    }else{
        des = [des substringFromIndex: self.len];
    }
    self.len = self.tf.text.length;
    des = [self.tf.text stringByAppendingString: des];
    self.tv.text = des;
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
