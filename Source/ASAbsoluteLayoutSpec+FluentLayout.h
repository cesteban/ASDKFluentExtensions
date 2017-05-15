//
//  ASAbsoluteLayoutSpec+FluentLayout.h
//  ASDKFluentExtensions
//
//  Copyright © 2017 Cesar Estebanez Tascon.
//  This software may be modified and distributed under the terms
//  of the MIT license.  See the LICENSE file for details.
//

#import <AsyncDisplayKit/AsyncDisplayKit.h>

@interface ASAbsoluteLayoutSpec (FluentLayout)

- (instancetype)withChildren:(NSArray<id<ASLayoutElement>> *)children;
- (instancetype)withSizing:(ASAbsoluteLayoutSpecSizing)sizing;

@end
