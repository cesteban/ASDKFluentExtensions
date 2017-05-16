# ASDKFluentExtensions

ASDKFluentExtensions is a set of Objective-C categories that extends `Texture` with a fluent interface for layout code. This fluent style is more visual, improves readability (less visual scanning to grasp layout structure), and makes layout more concise and easier to maintain. It also enables **composition** of layout specs and styling.

Imagine you want to overlay an image with a gradient. Then overlay the gradient with a title that must be positioned in the bottom right corner of the gradient, with some insets. Finally, the whole thing should have an aspect ratio of 1. With ASDKFluentExtensions you can write layout code like this:

```swift
override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
  return imageNode
    .withOverlay(gradientNode
      .withOverlay(titleNode
        .withRelativePosition(horizontal: .end, vertical: .end)
        .withInset(UIEdgeInsetsMake(.infinity, .infinity, 4, 4))))
    .withRatio(1)
}
```

Both `ASDisplayNode` and `ASLayoutSpec` subclasses can be wrapped within an `ASLayoutSpec` using this fluent syntax. Just start typing `.with` and look for the appropriate completion:

![autocompletion with](https://d2ppvlu71ri8gs.cloudfront.net/items/0t1B3R321W1z0k2S2Y16/Screen%20Recording%202017-05-16%20at%2011.16%20PM.gif)

All ASDKFluentExtensions methods return an object conforming to `ASLayoutElement`, so fluent layouts can be chained together. Furthermore, modifications of the `style` property can also be composed with layout definitions. This way the information flows in a meaningful order. Look at the modifications of `flexGrow` and `alignSelf` in the following example:

```swift
func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
  return ASStackLayoutSpec
    .vertical()
    .withSpacing(20)
    .withJustifyContent(.center)
    .withChildren([
      topSeparator
        .withFlexGrow(1.0),
      textNode
        .withAlignSelf(.center),
      bottomSeparator
        .withFlexGrow(1.0)
      ])
    .withInset(UIEdgeInsets(top: 60, left: 0, bottom: 60, right: 0))
}
```

ASDKFluentExtensions also provide categories over `ASStackLayoutSpec` and `ASAbsoluteLayoutSpec` which makes it possible to inline these specs in layout code with a very readable style:

```swift
func fluentLayoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
  return ASAbsoluteLayoutSpec()
    .withSizing(.sizeToFit)
    .withChildren([
      photoNode
        .withPreferredSize(CGSize(width: 150, height: 150))
        .withLayoutPosition(CGPoint(x: 40 / 2.0, y: 40 / 2.0)),
      iconNode
        .withPreferredSize(CGSize(width: 40, height: 40))
        .withLayoutPosition(CGPoint(x: 150, y: 0))])
}
```

There is even a category to conveniently create spacers!

```swift
let header = ASStackLayoutSpec().withChildren([userName, ASLayoutSpec.spacer(), lastTimeOnline])
```

Finally, this is a more contrived example, the layout code of `PhotoTableNodeCell` from the well known [ASDKgram-Swift](https://github.com/TextureGroup/Texture/tree/master/examples_extra/ASDKgram-Swift) example rewritten to use fluent layout:

```swift
func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
  return ASStackLayoutSpec
    .vertical()
    .withChildren([
      ASStackLayoutSpec()
        .withAlignItems(.center)
        .withChildren([
          avatarImageNode
            .withPreferredSize(CGSize(width: Constants.CellLayout.UserImageHeight, height: Constants.CellLayout.UserImageHeight))
            .withInset(Constants.CellLayout.InsetForAvatar),
          usernameLabel
            .withFlexShrink(1),
          ASLayoutSpec.spacer(),
          timeIntervalLabel
            .withSpacingBefore(Constants.CellLayout.HorizontalBuffer)
          ])
        .withInset(Constants.CellLayout.InsetForHeader),

      photoImageNode.withRatio(1),

      ASStackLayoutSpec
        .vertical()
        .withSpacing(Constants.CellLayout.VerticalBuffer)
        .withChildren([
          photoLikesLabel,
          photoDescriptionLabel])
        .withInset(Constants.CellLayout.InsetForFooter)
      ])
}
```

This layout reads from top to bottom without interruptions. The outermost code define the general structure, and inner parts define the details. The information flows in a meaningful order, so less visual scanning is needed. Also, it is much faster to add, remove, and reorganize specs, for example during debugging or prototyping. Finally, note how modifications of style properties are composable with layout specs (see usages of `withPreferredSize` or `withFlexShrink` inline with layout specs definition). This avoids interruptions on how the code visually flows.

### More About Fluent Interfaces

If you want to know more about Fluent API's, make sure to check [this paper](https://martinfowler.com/bliki/FluentInterface.html) in which Martin Fowler and Eric Evans coined the term.


## Documentation

There are a several examples on how to use ASDKFluentExtensions to write fluent layout code available in this [fork of Texture](https://github.com/cesteban/Texture/tree/fluent-extensions). They are clones of existing examples included in the main Texture repo, modified to illustrate ASDKFluentExtensions. The idea is that people wanting to approach this fluent syntax can have a set of familiar examples to look at.

This is the list of currently available examples:

- [ASDKgram-Swift](https://github.com/cesteban/Texture/tree/fluent-extensions/examples_extra/ASDKgram-Swift)
- [LayoutSpecExamples-Swift](https://github.com/cesteban/Texture/tree/fluent-extensions/examples/LayoutSpecExamples-Swift)
- [LayoutSpecExamples](https://github.com/cesteban/Texture/tree/fluent-extensions/examples/LayoutSpecExamples)
- [ASViewController](https://github.com/cesteban/Texture/tree/fluent-extensions/examples/ASViewController)
- [ASMapNode](https://github.com/cesteban/Texture/tree/fluent-extensions/examples/ASMapNode)
- [ASDKTube](https://github.com/cesteban/Texture/tree/fluent-extensions/examples/ASDKTube)
- [ASDKLayoutTransition](https://github.com/cesteban/Texture/tree/fluent-extensions/examples/ASDKLayoutTransition)
- [ASCollectionView](https://github.com/cesteban/Texture/tree/fluent-extensions/examples/ASCollectionView)
- [ASDKgram](https://github.com/cesteban/Texture/tree/fluent-extensions/examples/ASDKgram)


## Installation

ASDKFluentExtensions currently support Cocoapods. Carthage support is on its way.

### Cocoapods 

You can install ASDKFluentExtensions using CocoaPods. Add the pod to your Podfile:

```
target 'MyApp' do
  pod "ASDKFluentExtensions"
end
```

Then run the following command:

```
$ pod install
```

Make sure to import the header:

```
#import <ASDKFluentExtensions/ASDKFluentExtensions.h>
```

### Carthage (WIP)

ASDKFluentExtensions project has a dependency on Texture which is currently managed by Cocoapods. This interferes with the possibility of supporting Carthage since the framework cannot build automatically without the `pod install` phase.

A solution will be available soon...


## Discussion

ASDKFluentExtensions are just a bunch of Objective-C categories over `ASDisplayNode`, `ASLayoutSpec`, `ASStackLayoutSpec`, and `ASAbsoluteLayoutSpec` that create and return the desired layout spec passing `self` as child:

```objective-c
- (ASOverlayLayoutSpec *)withOverlay:(id<ASLayoutElement>)overlay
{
  return [ASOverlayLayoutSpec overlayLayoutSpecWithChild:self overlay:overlay];
}
```

ASDKFluentExtensions also offer categories to modify `style` properties of the `ASDisplayNode` or `ASLayoutSpec` returning `self`:

```objective-c
- (instancetype)withPreferredSize:(CGSize)preferredSize
{
    self.style.preferredSize = preferredSize;
    return self;
}
```

This makes layout and styling **composable**, and enables a very readable fluent API.


### Code Duplication and Swift Protocol Extensions

There is a lot of code duplication in order to provide the same functionality for both `ASDisplayNode` and `ASLayoutSpec`.

This could be avoided in Swift using protocol extensions over `ASLayoutElement`, but then the API won't be available from Objective-C. On the other hand, `Texture` is a pure Objective-C framework, so extending it in Swift would introduce limitations. Check [here](https://gist.github.com/cesteban/e5d265989ed319c0f83bfda3bffdcf8c) the original Swift implementation of ASDKFluentExtensions, very early abandoned in favor of the current Objective-C API.


## Contribute

Send all the feedback you have, and please contribute. Pull Requests and suggestions on how to improve this component are very much appreciated.
