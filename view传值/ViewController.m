//
//  ViewController.m
//  view传值
//
//  Created by user_kevin on 16/7/18.
//  Copyright © 2016年 user_kevin. All rights reserved.
//

#import "ViewController.h"
#import "testView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    testView * test = [[testView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    test.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:test];
    test.name = @"zhansan";
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString * htmlString = @"<html><body> Some html string \n <font size=\"13\" color=\"red\">This is some text!</font> </body></html>";
    NSAttributedString * attrStr = [[NSAttributedString alloc] initWithData:[htmlString dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    UILabel * myLabel = [[UILabel alloc] initWithFrame:self.view.bounds];
    myLabel.attributedText = attrStr;
    [self.view addSubview:myLabel];
    self.navigationItem.title = @"充值";
    self.view.backgroundColor = [UIColor whiteColor];
   NSArray * array = @[@"10",@"20",@"30",@"50",@"100",@"200",@"300",@"500",@"1000"];
   NSArray * littleArray = @[@"0.01",@"19.96",@"29.94",@"49.90",@"99.80",@"198.00",@"299.40",@"499.00",@"998.00"];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
