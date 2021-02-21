import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnimplementedPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('StudeoMea'),
      ),
      body:
      new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 50.0, 24.0, 50.0),
            ),

            new Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 50.0, 24.0, 50.0),
            ),

            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "UNIMPLEMENTED",
                    style: new TextStyle(fontSize:32.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Merriweather"),
                  )
                ]

            )
          ]

      ),

    );
  }
}