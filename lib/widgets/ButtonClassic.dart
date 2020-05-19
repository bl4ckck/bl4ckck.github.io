import 'package:flutter/material.dart';
import 'package:portfolio/helpers/HexColor.dart';

class ButtonClassic extends StatelessWidget {
  const ButtonClassic({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        //asd
      },
      color: HexColor('#E9E8E9'),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(width: 2, color: HexColor('#C6C3C6'))),
      textColor: HexColor('#4D4D4D'),
      child: Text("$title"),
    );
  }
}
