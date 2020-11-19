# popup_menu_title
A Flutter package to provide a popup menu title.

<img src="https://i.postimg.cc/tpZ0KNg5/Screenshot-20201108-175109.png" height="300"/>

## Usage
```dart
import 'package:popup_menu_title/popup_menu_title.dart';

final menuItemList = [
  PopupMenuTitle(
    title: 'Popup menu title',
    overflow: TextOverflow.fade,
    // The text style below is the default style, but is specified
    // here as an example of how to do so.
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      color: Theme
          .of(context)
          .primaryColor,
    ),
  ),
  PopupMenuItem<void>(child: const Text('Item 1')),
  PopupMenuItem<void>(child: const Text('Item 2')),
  PopupMenuItem<void>(child: const Text('Item 3')),
];
```