import 'package:flutter/cupertino.dart';

class SliderWidgetIos extends StatefulWidget {
  @override
  _SliderWidgetIosState createState() => _SliderWidgetIosState();
}

class _SliderWidgetIosState extends State<SliderWidgetIos> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return CupertinoSlider(
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

class SwitchWidgetIos extends StatefulWidget {
  const SwitchWidgetIos({Key? key}) : super(key: key);

  @override
  _SwitchWidgetIosState createState() => _SwitchWidgetIosState();
}

class _SwitchWidgetIosState extends State<SwitchWidgetIos> {
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
    return CupertinoSwitch(
      onChanged: toggleSwitch,
      value: isSwitched,
      activeColor: CupertinoColors.activeBlue,
    );
  }
}
