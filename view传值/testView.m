//
//  testView.m
//  view传值
//
//  Created by user_kevin on 16/7/18.
//  Copyright © 2016年 user_kevin. All rights reserved.
//

#import "testView.h"

@implementation testView
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor whiteColor];
        NSArray * array = @[@"10",@"20",@"30",@"50",@"100",@"200",@"300",@"500",@"1000"];
        NSArray * littleArray = @[@"0.01",@"19.96",@"29.94",@"49.90",@"99.80",@"198.00",@"299.40",@"499.00",@"998.00"];

    }
    return self;
}

//.m文件

- (void)setName:(NSString*)name{
    
    if (name != _name) {//如果旧值和将要付给它的新值不相等的话，就给它赋新值，
        
        _name = name;//赋给新值
        NSLog(@"%@",_name);
        
    }
    
}

//- (NSString *)name{
//    
//    return  _name;
//    
//}
//
@end
