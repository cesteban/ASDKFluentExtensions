//
//  ASStackLayoutSpec+FluentLayout.h
//  ASDKFluentExtensions
//
//  Copyright © 2017 Cesar Estebanez Tascon.
//  This software may be modified and distributed under the terms
//  of the MIT license.  See the LICENSE file for details.
//

#import <AsyncDisplayKit/AsyncDisplayKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ASStackLayoutSpec (FluentLayout)

- (instancetype)withChildren:(NSArray<id<ASLayoutElement>> *)children;
- (instancetype)withSpacing:(CGFloat)spacing;
- (instancetype)withJustifyContent:(ASStackLayoutJustifyContent)justifyContent;
- (instancetype)justifyContent:(ASStackLayoutJustifyContent)justifyContent; // Experimental
- (instancetype)withAlignItems:(ASStackLayoutAlignItems)alignItems;
- (instancetype)alignItems:(ASStackLayoutAlignItems)alignItems; // Experimental

@end

NS_ASSUME_NONNULL_END
