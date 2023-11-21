import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {

  @override
  State<MyCheckBox> createState() => _Circheckbox();

}

class _Circheckbox extends State<MyCheckBox>{

  bool? isMan = false;
  bool? isWoman = false;

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        const Padding(padding: EdgeInsets.only(left: 15)),
        Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            value: isMan,
            onChanged: (value) {
              setState(() {
                isMan = value;
              });
            },
        ),
        const Text("남성",
        style: TextStyle(
          fontFamily: 'NanumGothicExtraBold',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        const Padding(padding: EdgeInsets.only(left: 15)),
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          value: isWoman,
          onChanged: (value) {
            setState(() {
              isWoman = value;
            });
          },
        ),
        const Text("여성",
          style: TextStyle(
            fontFamily: 'NanumGothicExtraBold',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}