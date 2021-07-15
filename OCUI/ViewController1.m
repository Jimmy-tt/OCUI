//
//  ViewController1.m
//  OCUI
//
//  Created by cmb on 2021/7/9.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"connector" ofType:@"plist"]; //绑定connector.plist文件
    
    self.list = [[NSArray alloc]initWithContentsOfFile:plistPath];
    self.connector = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    //设置表视图的委托对象和数据对象为self
    self.connector.delegate = self;
    self.connector.dataSource = self;
    
    [self.view addSubview:self.connector];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.list count];
}

//为表视图单元提供数据
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier: CellIdentifier];
    }
    NSUInteger row = [indexPath row];
    
    NSDictionary *rowDict = self.list[row];
    cell.textLabel.text = rowDict[@"name"];  //绑定connector.plist文件中每一个元素的属性

    NSString *imagePath = [[NSString alloc]initWithFormat:@"%@.jpeg", rowDict[@"image"]];
    cell.imageView.image = [UIImage imageNamed:imagePath];
    //扩展视图
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
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
