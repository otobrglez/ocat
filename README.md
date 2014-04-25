# Playing with Objective-C

This experiments with [Objective-C](https://developer.apple.com/library/mac/documentation/cocoa/conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html), [Cocoa](https://developer.apple.com/technologies/mac/cocoa.html), [Cocoa Touch](https://developer.apple.com/technologies/ios/cocoa-touch.html) and other Apple stuff.

Examples are organized by days, each "day" can be built from Makefile located on projects root folder. Instructions on building can be found underneeth section [building examples](#building-examples). There are some [pre-requirements](#requirements) to build them.

- [Oto Brglez](https://github.com/otobrglez)

## Examples

- [Day 01](src/01) - Simple Objective-C app with loops.
- [Day 02](src/02) - Interface, implementation, and simple class.
- [Day 03](src/03) - Pointers and some classes.
- [Day 04](src/04) - Classes, setters, getters, properties, categories and [LLDB](https://developer.apple.com/library/mac/documentation/IDEs/Conceptual/gdb_to_lldb_transition_guide/document/lldb-command-examples.html).
- [Day 05](src/05) - [CocoaPods](http://cocoapods.org/), XCode and [xctool](https://github.com/facebook/xctool).
- [Day 06](src/06) - Getting to know [NSTextView](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/ApplicationKit/Classes/NSTextView_Class/Reference/Reference.html), [NSButton](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/ApplicationKit/Classes/NSButton_Class/Reference/Reference.html) and way to build UIs in XCode.

## Requirements

- Ruby (with some VM like [RVM](https://rvm.io/))
- [xctool](https://github.com/facebook/xctool)
- [CocoaPods](http://cocoapods.org/) (dependencies for each project are managed with [pods](http://guides.cocoapods.org/using/using-cocoapods.html))

## Building examples

Code for can be build from command line.

```
make            # build all examples

make day-01     # build just one
./day-01

make clean      # clean everything
```


