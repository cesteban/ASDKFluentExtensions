//
//  ASDisplayNode+FluentStyling.m
//  ASDKFluentExtensions
//
//  Copyright © 2017 Cesar Estebanez Tascon.
//  This software may be modified and distributed under the terms
//  of the MIT license.  See the LICENSE file for details.
//

#import "ASDisplayNode+FluentStyling.h"

@implementation ASDisplayNode (FluentStyling)

#pragma mark - Sizing

- (instancetype)withWidth:(ASDimension)width
{
    self.style.width = width;
    return self;
}

- (instancetype)withHeight:(ASDimension)height
{
    self.style.height = height;
    return self;
}

- (instancetype)withMinWidth:(ASDimension)minWidth
{
    self.style.minWidth = minWidth;
    return self;
}

- (instancetype)withMaxWidth:(ASDimension)maxWidth
{
    self.style.maxWidth = maxWidth;
    return self;
}

- (instancetype)withMinHeight:(ASDimension)minHeight
{
    self.style.minHeight = minHeight;
    return self;
}

- (instancetype)withMaxHeight:(ASDimension)maxHeight
{
    self.style.maxHeight = maxHeight;
    return self;
}

#pragma mark - Size Helpers

- (instancetype)withPreferredSize:(CGSize)preferredSize
{
    self.style.preferredSize = preferredSize;
    return self;
}

- (instancetype)withMinSize:(CGSize)minSize
{
    self.style.minSize = minSize;
    return self;
}

- (instancetype)withMaxSize:(CGSize)maxSize
{
    self.style.maxSize = maxSize;
    return self;
}

- (instancetype)withPreferredLayoutSize:(ASLayoutSize)preferredLayoutSize
{
    self.style.preferredLayoutSize = preferredLayoutSize;
    return self;
}

- (instancetype)withPreferredLayoutWidth:(ASDimension)preferredLayoutWidth
{
    self.style.preferredLayoutSize = ASLayoutSizeMake(preferredLayoutWidth, ASDimensionAuto);
    return self;
}

- (instancetype)withPreferredLayoutHeight:(ASDimension)preferredLayoutHeight
{
    self.style.preferredLayoutSize = ASLayoutSizeMake(ASDimensionAuto, preferredLayoutHeight);
    return self;
}

- (instancetype)withMinLayoutSize:(ASLayoutSize)minLayoutSize
{
    self.style.minLayoutSize = minLayoutSize;
    return self;
}

- (instancetype)withMinLayoutWidth:(ASDimension)minLayoutWidth
{
    self.style.minLayoutSize = ASLayoutSizeMake(minLayoutWidth, ASDimensionAuto);
    return self;
}

- (instancetype)withMinLayoutHeight:(ASDimension)minLayoutHeight
{
    self.style.minLayoutSize = ASLayoutSizeMake(ASDimensionAuto, minLayoutHeight);
    return self;
}

- (instancetype)withMaxLayoutSize:(ASLayoutSize)maxLayoutSize
{
    self.style.maxLayoutSize = maxLayoutSize;
    return self;
}

- (instancetype)withMaxLayoutWidth:(ASDimension)maxLayoutWidth
{
    self.style.maxLayoutSize = ASLayoutSizeMake(maxLayoutWidth, ASDimensionAuto);
    return self;
}

- (instancetype)withMaxLayoutHeight:(ASDimension)maxLayoutHeight
{
    self.style.maxLayoutSize = ASLayoutSizeMake(ASDimensionAuto, maxLayoutHeight);
    return self;
}

#pragma mark - ASStackLayoutElement

- (instancetype)withSpacingBefore:(CGFloat)spacingBefore
{
    self.style.spacingBefore = spacingBefore;
    return self;
}

- (instancetype)withSpacingAfter:(CGFloat)spacingAfter
{
    self.style.spacingAfter = spacingAfter;
    return self;
}

- (instancetype)withFlexGrow:(CGFloat)flexGrow
{
    self.style.flexGrow = flexGrow;
    return self;
}

- (instancetype)withFlexShrink:(CGFloat)flexShrink
{
    self.style.flexShrink = flexShrink;
    return self;
}

- (instancetype)withFlexBasis:(ASDimension)flexBasis
{
    self.style.flexBasis = flexBasis;
    return self;
}

- (instancetype)withAlignSelf:(ASStackLayoutAlignSelf)alignSelf
{
    self.style.alignSelf = alignSelf;
    return self;
}

// Experimental
- (instancetype)alignSelf:(ASStackLayoutAlignSelf)alignSelf
{
    self.style.alignSelf = alignSelf;
    return self;
}

- (instancetype)withAscender:(CGFloat)ascender
{
    self.style.ascender = ascender;
    return self;
}

- (instancetype)withDescender:(CGFloat)descender
{
    self.style.descender = descender;
    return self;
}

#pragma mark - ASAbsoluteLayoutElement

- (instancetype)withLayoutPosition:(CGPoint)layoutPosition
{
    self.style.layoutPosition = layoutPosition;
    return self;
}

@end
