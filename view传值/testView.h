//
//  testView.h
//  view传值
//
//  Created by user_kevin on 16/7/18.
//  Copyright © 2016年 user_kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface testView : UIView
{
    
    NSString * _name;
    
}

- (void)setName:(NSString*)name;

- (NSString *)name;


@end