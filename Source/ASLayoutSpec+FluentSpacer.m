//
//  ASLayoutSpec+FluentSpacer.m
//  ASDKFluentExtensions
//
//  Copyright © 2017 Cesar Estebanez Tascon.
//  This software may be modified and distributed under the terms
//  of the MIT license.  See the LICENSE file for details.
//

#import "ASLayoutSpec+FluentSpacer.h"
#import "ASLayoutSpec+FluentStyling.h"

@implementation ASLayoutSpec (FluentSpacer)

+ (ASLayoutSpec *)spacer
{
    return [[[ASLayoutSpec alloc] init] withFlexGrow:1];
}

@end
