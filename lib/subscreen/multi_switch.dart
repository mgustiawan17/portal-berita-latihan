import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class multiSwitch extends StatefulWidget {
  const multiSwitch({super.key});

  @override
  State<multiSwitch> createState() => _multiSwitchState();
}

class _multiSwitchState extends State<multiSwitch> {
  bool val1 = true;
  bool val2 = false;
  bool val3 = false;
  onChangeFunction(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue1) {
    setState(() {
      val2 = newValue1;
    });
  }

  onChangeFunction3(bool newValue1) {
    setState(() {
      val3 = newValue1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customSwitch(
              Icons.dark_mode_outlined, 'Dark', val1, onChangeFunction),
          customSwitch(
              Icons.wifi, 'Only Download via Wi-Fi', val2, onChangeFunction2),
          customSwitch(Icons.video_library, 'Play in Background', val3,
              onChangeFunction3)
        ],
      ),
    );
  }

  Widget customSwitch(
      IconData icon, String text, bool val, Function onChangeMethod) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Spacer(),
          CupertinoSwitch(
              trackColor: Colors.grey,
              activeColor: Colors.blue,
              value: val,
              onChanged: (newValue) {
                onChangeMethod(newValue);
              })
        ],
      ),
    );
  }
}
