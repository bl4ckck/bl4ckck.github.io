import 'package:flutter/material.dart';
import 'package:portfolio/helpers/HexColor.dart';
import 'package:portfolio/helpers/SizingInformation.dart';
import 'package:portfolio/helpers/WidgetSwitcher.dart';
import 'package:portfolio/widgets/ButtonClassic.dart';
import 'package:portfolio/widgets/TextStroke.dart';

class Header extends StatelessWidget {
  const Header({Key key, this.sizingInformation}) : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'images/dolphin.jpg',
          width: sizingInformation.localWidgetSize.width / 2 + 300,
        ),
        Container(
          width: sizingInformation.localWidgetSize.width,
          margin: EdgeInsets.all(24),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                      flex: 1, child: TextStroke(text: 'bl4ckck.github.io')),
                  Expanded(
                    flex: 1,
                    child: WidgetSwitcher(
                      sizingInformation: sizingInformation,
                      children: <Widget>[
                        ButtonClassic(
                          title: 'LinkedIn',
                        ),
                        ButtonClassic(
                          title: 'Github',
                        ),
                        ButtonClassic(
                          title: 'Youtube',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 100,),

              Container(
                margin: EdgeInsets.only(top: 100),
                height: 200,
                width: sizingInformation.localWidgetSize.width / 2 + 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.zero,
                    color: HexColor('#E9E8E9'),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 5,
                          color: Colors.black26)
                    ]),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: sizingInformation.localWidgetSize.width / 2 + 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.zero,
                          color: HexColor('#E9E8E9'),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 5,
                                color: Colors.black26)
                          ]),
                      child: TextStroke(text: 'dwaadw'),
                    ),
                    ButtonClassic(title: 'awdawd')
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
