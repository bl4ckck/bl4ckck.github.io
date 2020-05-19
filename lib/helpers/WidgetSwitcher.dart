import 'package:flutter/material.dart';
import 'package:portfolio/helpers/SizingInformation.dart';

class WidgetSwitcher extends StatelessWidget {
  const WidgetSwitcher({Key key, this.children, this.sizingInformation}) : super(key: key);

  final List<Widget> children;
  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return sizingInformation.orientation == Orientation.portrait
        ? Column(children: children)
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: children);
  }
}
