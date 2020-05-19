import 'package:flutter/material.dart';
import 'package:portfolio/helpers/HexColor.dart';

class TextStroke extends StatelessWidget {
  const TextStroke({Key key, @required this.text, this.color})
      : super(key: key);

  final String text;
  final String color;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(
          fontSize: 24,
          letterSpacing: 5,
          color: Colors.white,
          shadows: [
            Shadow(
                // bottomLeft
                offset: Offset(-1.5, -1.5),
                color: HexColor((color == null) ? '#B2BD16' : "$color")),
            Shadow(
                // bottomRight
                offset: Offset(1.5, -1.5),
                color: HexColor((color == null) ? '#B2BD16' : "$color")),
            Shadow(
                // topRight
                offset: Offset(1.5, 1.5),
                color: HexColor((color == null) ? '#B2BD16' : "$color")),
            Shadow(
                // topLeft
                offset: Offset(-1.5, 1.5),
                color: HexColor((color == null) ? '#B2BD16' : "$color")),
          ],
          decoration: TextDecoration.underline),
    );
  }
}
