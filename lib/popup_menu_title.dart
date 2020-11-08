library popup_menu_title;

import 'package:flutter/material.dart';

/// A title widget to use in a popup menu.
class PopupMenuTitle extends PopupMenuEntry<void> {
  static const defaultFontWeight = FontWeight.w600;
  static const defaultPadding = 16.0;

  final String title;
  final TextOverflow overflow;
  final TextStyle textStyle;

  /// Creates the menu entry widget.
  ///
  /// Specify the title to display with [title].
  /// Specify the text overflow style with [overflow].
  /// Specify a custom [TextStyle] with [textStyle]. The [defaultFontWeight] and
  /// primary theme color will be used by default.
  const PopupMenuTitle({
    @required this.title,
    this.overflow = TextOverflow.ellipsis,
    this.textStyle,
  });

  /// Constructs a [TextPainter] and uses the calculated [TextPainter.height]
  /// with the [defaultPadding] to calculate the height of the widget.
  @override
  double get height =>
      (TextPainter(
        text: TextSpan(
          text: title,
          style: textStyle ?? TextStyle(fontWeight: defaultFontWeight),
        ),
        maxLines: 1,
      )..layout())
          .height +
      defaultPadding * 2;

  /// This menu entry isn't selectable; it represents no value.
  /// Always returns false.
  @override
  bool represents(void value) => false;

  @override
  _PopupMenuTitleState createState() => _PopupMenuTitleState();
}

class _PopupMenuTitleState extends State<PopupMenuTitle> {
  @override
  Widget build(BuildContext context) {
    assert(
      Theme.of(context) != null,
      'Cannot find theme! Specify a custom TextStyle.',
    );

    return Padding(
      padding: const EdgeInsets.all(PopupMenuTitle.defaultPadding),
      child: Text(
        widget.title,
        overflow: widget.overflow,
        maxLines: 1,
        softWrap: false,
        style: widget.textStyle ??
            TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: PopupMenuTitle.defaultFontWeight,
            ),
      ),
    );
  }
}
