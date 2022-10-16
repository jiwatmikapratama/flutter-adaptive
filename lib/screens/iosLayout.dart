import 'package:flutter/cupertino.dart';

class IosLayout extends StatefulWidget {
  const IosLayout({Key? key}) : super(key: key);

  @override
  _IosLayoutState createState() => _IosLayoutState();
}

class _IosLayoutState extends State<IosLayout> {
  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
      middle: Text('Ini Adalah Tampilan IOS'),
    ),
    child: Center(

    ),
    );
  }
}
