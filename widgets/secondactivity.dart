import 'package:flutter/material.dart';

class SecondActivity extends StatefulWidget {

  @override
  State<SecondActivity> createState() => _SecondActivity();

}

class _SecondActivity extends State<SecondActivity> {

  bool? soso = false;
  bool? good = false;

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [

        //활동적
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          value: soso,
          onChanged: (value) {
            setState(() {
              soso = value;
            });
          },
        ),
        const Text("활동적",
          style: TextStyle(
            fontFamily: 'NanumGothicExtraBold',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        //매우 활동적
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          value: good,
          onChanged: (value) {
            setState(() {
              good = value;
            });
          },
        ),
        const Text("매우 활동적",
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
