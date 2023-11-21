import 'package:flutter/material.dart';

class Box extends StatelessWidget {

  final String text;
  const Box({
    super.key,
    required this.text,
});

  @override
  Widget build(BuildContext context) {

    return Container(// 박스 설정
      width: 130,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
      ),
      child: Center(
          child: Text(text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'NanumGothicExtraBold',
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
      ),
    );
  }

}