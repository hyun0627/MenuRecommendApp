import 'package:flutter/material.dart';

class ActivityCheck extends StatefulWidget {

  @override
  State<ActivityCheck> createState() => _ActivityCheck();

}

class _ActivityCheck extends State<ActivityCheck>{

  bool? vebad = false;
  bool? bad = false;

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        //활동 X
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          value: vebad,
          onChanged: (value) {
            setState(() {
              vebad = value;
            });
          },
        ),
        const Text("활동 X",
          style: TextStyle(
            fontFamily: 'NanumGothicExtraBold',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        // 낮은 활동적
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          value: bad,
          onChanged: (value) {
            setState(() {
              bad = value;
            });
          },
        ),
        const Text("낮은 활동적",
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