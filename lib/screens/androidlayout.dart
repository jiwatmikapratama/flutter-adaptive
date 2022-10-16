import 'package:flutter/material.dart';

class AndroidLayout extends StatefulWidget {
  const AndroidLayout({Key? key}) : super(key: key);

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
      body: Container(),
    );
  }
}
