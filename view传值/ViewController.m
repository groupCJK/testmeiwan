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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
