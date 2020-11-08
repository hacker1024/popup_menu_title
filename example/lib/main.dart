import 'package:flutter/material.dart';
import 'package:popup_menu_title/popup_menu_title.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget _buildMenuButton() {
    return PopupMenuButton(
      icon: const Icon(Icons.menu),
      tooltip: 'Show menu',
      itemBuilder: (context) => [
        PopupMenuTitle(
          title: 'Popup menu title',
          overflow: TextOverflow.fade,
          // The text style below is the default style, but is specified
          // here as an example of how to do so.
          textStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: Theme.of(context)!.primaryColor,
          ),
        ),
        PopupMenuItem<void>(child: const Text('Item 1')),
        PopupMenuItem<void>(child: const Text('Item 2')),
        PopupMenuItem<void>(child: const Text('Item 3')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Popup menu title example'),
          actions: [_buildMenuButton()],
        ),
        body: Center(
          child: _buildMenuButton(),
        ),
      ),
    );
  }
}
