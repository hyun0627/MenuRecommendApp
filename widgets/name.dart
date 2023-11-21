import 'package:flutter/material.dart';

class Name extends StatelessWidget{

  final String text;
  const Name({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 150,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
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