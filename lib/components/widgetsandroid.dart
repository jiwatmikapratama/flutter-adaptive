import 'package:flutter/material.dart';

class SliderWidgetAndroid extends StatefulWidget {
  @override
  _SliderWidgetAndroidState createState() => _SliderWidgetAndroidState();
}

class _SliderWidgetAndroidState extends State<SliderWidgetAndroid> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      min: 0.0,
      max: 100.0,
      value: _value,
      onChanged: (value) {
        setState(() {
          _value = value;
        });
      },
    );
  }
}

class SwitchWidgetAndroid extends StatefulWidget {
  const SwitchWidgetAndroid({Key? key}) : super(key: key);

  @override
  _SwitchWidgetAndroidState createState() => _SwitchWidgetAndroidState();
}

class _SwitchWidgetAndroidState extends State<SwitchWidgetAndroid> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    var textValue = 'Switch is OFF';
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: toggleSwitch,
      value: isSwitched,
      activeColor: Colors.blue,
    );
  }
}
