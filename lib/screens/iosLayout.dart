import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive/components/widgetios.dart';
import 'package:flutter_adaptive/main.dart';

class IosLayout extends StatefulWidget {
  const IosLayout({Key? key}) : super(key: key);

  @override
  _IosLayoutState createState() => _IosLayoutState();
}

class _IosLayoutState extends State<IosLayout> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            leading: CupertinoButton(
              onPressed: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (context) => MyApp()));
              },
              child: Icon(CupertinoIcons.back),
            ),
            middle: Text('Ini Adalah Tampilan IOS'),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('Ini adalah slider IOS'),
                  SliderWidgetIos(),
                  Text('Ini adalah Switch IOS'),
                  SwitchWidgetIos(),
                  Text('Ini adalah Text Field IOS'),
                  CupertinoTextField(),
                  Text('Ini adalah Icons IOS'),
                  Icon(
                    CupertinoIcons.share,
                    size: 50,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
