import 'package:flutter/material.dart';
import 'package:portfolio/components/HomePage/Header.dart';
import 'package:portfolio/helpers/HexColor.dart';
import 'helpers/BaseWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      return Scaffold(
        backgroundColor: HexColor('#8CC8E6'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(
                sizingInformation: sizingInformation,
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                widthFactor: sizingInformation.localWidgetSize.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      'awt',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
