import 'package:flutter/material.dart';
import 'package:flutter_adaptive/components/widgetsandroid.dart';

class AndroidLayout extends StatefulWidget {
  @override
  _AndroidLayoutState createState() => _AndroidLayoutState();
}

class _AndroidLayoutState extends State<AndroidLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ini adalah Tampilan Android'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Ini adalah slider Android'),
            SliderWidgetAndroid(),
            Text('Ini adalah Switch Android'),
            SwitchWidgetAndroid(),
            Text('Ini adalah Text Field Android'),
            TextField(),
            Text('Ini adalah Icon Android'),
            Icon(
              Icons.share,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
