//
//  TheProtocol.h
//  NavigationExample
//
//  Created by Alex on 14/03/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol TheProtocol <NSObject>

@optional
-(UIColor *) chageColorView: (UIView*) view;
@end
