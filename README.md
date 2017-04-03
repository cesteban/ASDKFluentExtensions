# ASDKFluentExtensions

`ASDKFluentExtensions` are a set of Objective-C categories that extend `AsyncDisplayKit` with a fluent interface for layout code. This fluent style is more visual, improves readability (less visual scanning to grasp layout structure), and makes layout more concise and easier to maintain. It also enables **composition** of layout specs and styling.

With `ASDKFluentExtensions` you can write layout code like this:

```swift
override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
  return image.withOverlay(gradient)
}
```

A more complex example in Swift:

```swift
override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
  return image
    .withOverlay(gradient
      .withOverlay(title
        .withRelativePosition(horizontal: .end, vertical: .end)
        .withInset(UIEdgeInsetsMake(.infinity, .infinity, 4, 4))))
    .withRatio(1)
}
```

Same as before, this time in Objective-C:

```objective-c
- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize
{
  return [[image
          withOverlay:[gradient
            withOverlay:[[title
              withRelativePositionHorizontal:ASRelativeLayoutSpecPositionEnd vertical:ASRelativeLayoutSpecPositionEnd]
              withInset:UIEdgeInsetsMake(INFINITY, INFINITY, 4, 4)]]]
          withRatio:1];
}
```

Composition of layout specs and styling:

```objective-c
- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize
{
  return [[ASStackLayoutSpec horizontalStackLayoutSpec]
          withChildren:@[[avatar withPreferredSize:avatarSize],
                         [name withFlexGrow:1]]];
}
```

Another composition example, this time in Swift:

```swift
override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
  return image
      .withRatio(1)
      .withPreferredLayoutWidth(ASDimensionMake("80%"))
      .withMaxWidth(ASDimensionMake(450))
      .withRelativePosition(horizontal: .end, vertical: .center)
}
```

There is also a category of `ASLayoutSpec` to create spacers:

```swift
let header = ASStackLayoutSpec.withChildren([userName, ASLayoutSpec.spacer(), lastTimeOnline])
```

## Discussion

> `ASDKFluentExtensions` are syntactic sugar, they don't add any additional logic to `AsyncDisplayKit`.

`ASDKFluentExtensions` are just a bunch of Objective-C categories over `ASDisplayNode`, `ASLayoutSpec`, and `ASStackLayoutSpec` that create and return the desired layout spec passing `self` as child:

```objective-c
- (ASOverlayLayoutSpec *)withOverlay:(id<ASLayoutElement>)overlay
{
  return [ASOverlayLayoutSpec overlayLayoutSpecWithChild:self overlay:overlay];
}
```

`ASDKFluentExtensions` also offer categories to modify `style` properties of the `ASDisplayNode` or `ASLayoutSpec` returning `self`:

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

This could be avoided in Swift using protocol extensions over `ASLayoutElement`, but then the API won't be available from Objective-C. On the other hand, `AsyncDisplayKit` is a pure Objective-C framework, so extending it in Swift would introduce limitations. Check [here](https://gist.github.com/cesteban/e5d265989ed319c0f83bfda3bffdcf8c) the original Swift implementation of `ASDKFluentExtensions`, very early abandoned in favor of the current Objective-C API.


## Installation

ToDo: A pod will be available. Carthage support would be great too.


## Usage

Install, import, and get fluent :)
