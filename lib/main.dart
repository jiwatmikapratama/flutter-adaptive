import 'package:flutter/material.dart';
import 'package:flutter_adaptive/screens/androidlayout.dart';
import 'package:flutter_adaptive/screens/iosLayout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // The line below forces the theme to iOS.
        // platform: TargetPlatform.iOS
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Adaptive-Main Page'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                navigateLayoutButton(AndroidLayout(), 'Tampilan Android'),
                navigateLayoutButton(IosLayout(), 'Tampilan IOS')
              ],
            )
            //
            // CupertinoSlider(
            //   min: 0.0,
            //   max: 100.0,
            //   value: _value,
            //   onChanged: (value) {
            //     setState(() {
            //       _value = value;
            //     });
            //   },
            // ),
            //
            // CupertinoSwitch(
            //   // This bool value toggles the switch.
            //   onChanged: toggleSwitch,
            //   value: isSwitched,
            //   activeColor: Colors.blue,
            // ),
          ],
        ),
      ),
    );
  }
}

class navigateLayoutButton extends StatelessWidget {
  var page;
  String desc;
  navigateLayoutButton(this.page, this.desc);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      icon: Icon(Icons.android),
      style: TextButton.styleFrom(
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
      ),
      label: Text(desc),
    );
  }
}
