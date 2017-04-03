//
//  ASDisplayNode+FluentStyling.h
//  ASDKFluentExtensions
//
//  Copyright © 2017 Cesar Estebanez Tascon.
//  This software may be modified and distributed under the terms
//  of the MIT license.  See the LICENSE file for details.
//

#import <AsyncDisplayKit/AsyncDisplayKit.h>

@interface ASDisplayNode (FluentStyling)

// Sizing

- (instancetype)withWidth:(ASDimension)width;
- (instancetype)withHeight:(ASDimension)height;
- (instancetype)withMinWidth:(ASDimension)minWidth;
- (instancetype)withMaxWidth:(ASDimension)maxWidth;
- (instancetype)withMinHeight:(ASDimension)minHeight;
- (instancetype)withMaxHeight:(ASDimension)maxHeight;

// Size Helpers

- (instancetype)withPreferredSize:(CGSize)preferredSize;
- (instancetype)withMinSize:(CGSize)minSize;
- (instancetype)withMaxSize:(CGSize)maxSize;
- (instancetype)withPreferredLayoutSize:(ASLayoutSize)preferredLayoutSize;
- (instancetype)withPreferredLayoutWidth:(ASDimension)preferredLayoutWidth;
- (instancetype)withPreferredLayoutHeight:(ASDimension)preferredLayoutHeight;
- (instancetype)withMinLayoutSize:(ASLayoutSize)minLayoutSize;
- (instancetype)withMinLayoutWidth:(ASDimension)minLayoutWidth;
- (instancetype)withMinLayoutHeight:(ASDimension)minLayoutHeight;
- (instancetype)withMaxLayoutSize:(ASLayoutSize)maxLayoutSize;
- (instancetype)withMaxLayoutWidth:(ASDimension)maxLayoutWidth;
- (instancetype)withMaxLayoutHeight:(ASDimension)maxLayoutHeight;

// ASStackLayoutElement

- (instancetype)withSpacingBefore:(CGFloat)spacingBefore;
- (instancetype)withSpacingAfter:(CGFloat)spacingAfter;
- (instancetype)withFlexGrow:(CGFloat)flexGrow;
- (instancetype)withFlexShrink:(CGFloat)flexShrink;
- (instancetype)withFlexBasis:(ASDimension)flexBasis;
- (instancetype)withAlignSelf:(ASStackLayoutAlignSelf)alignSelf;
- (instancetype)alignSelf:(ASStackLayoutAlignSelf)alignSelf; // Experimental
- (instancetype)withAscender:(CGFloat)ascender;
- (instancetype)withDescender:(CGFloat)descender;

// ASAbsoluteLayoutElement

- (instancetype)withLayoutPosition:(CGPoint)layoutPosition;

@end
