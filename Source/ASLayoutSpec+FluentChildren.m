//
//  ASLayoutSpec+FluentChildren.m
//  ASDKFluentExtensions
//
//  Copyright © 2017 Cesar Estebanez Tascon.
//  This software may be modified and distributed under the terms
//  of the MIT license.  See the LICENSE file for details.
//

#import "ASLayoutSpec+FluentChildren.h"

@implementation ASLayoutSpec (FluentChildren)

- (instancetype)withChildren:(NSArray<id<ASLayoutElement>> *)children
{
  self.children = children;
  return self;
}

@end
