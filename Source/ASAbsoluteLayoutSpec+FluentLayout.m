//
//  ASAbsoluteLayoutSpec+FluentLayout.m
//  ASDKFluentExtensions
//
//  Copyright © 2017 Cesar Estebanez Tascon.
//  This software may be modified and distributed under the terms
//  of the MIT license.  See the LICENSE file for details.
//

#import "ASAbsoluteLayoutSpec+FluentLayout.h"

@implementation ASAbsoluteLayoutSpec (FluentLayout)

- (instancetype)withChildren:(NSArray<id<ASLayoutElement>> *)children
{
  self.children = children;
  return self;
}

- (instancetype)withSizing:(ASAbsoluteLayoutSpecSizing)sizing
{
  self.sizing = sizing;
  return self;
}

@end
