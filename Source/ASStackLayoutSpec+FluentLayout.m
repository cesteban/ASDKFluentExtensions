//
//  ASStackLayoutSpec+FluentLayout.m
//  ASDKFluentExtensions
//
//  Copyright © 2017 Cesar Estebanez Tascon.
//  This software may be modified and distributed under the terms
//  of the MIT license.  See the LICENSE file for details.
//

#import "ASStackLayoutSpec+FluentLayout.h"

@implementation ASStackLayoutSpec (FluentLayout)

- (instancetype)withSpacing:(CGFloat)spacing
{
  self.spacing = spacing;
  return self;
}

- (instancetype)withJustifyContent:(ASStackLayoutJustifyContent)justifyContent
{
  self.justifyContent = justifyContent;
  return self;
}

- (instancetype)withAlignItems:(ASStackLayoutAlignItems)alignItems
{
  self.alignItems = alignItems;
  return self;
}

// Experimental
- (instancetype)justifyContent:(ASStackLayoutJustifyContent)justifyContent
{
  self.justifyContent = justifyContent;
  return self;
}

// Experimental
- (instancetype)alignItems:(ASStackLayoutAlignItems)alignItems
{
  self.alignItems = alignItems;
  return self;
}

@end
