import 'package:flutter/material.dart';

class ExtraBox extends StatelessWidget {

  final String name;
  const ExtraBox({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 150,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Image.asset(name,width: 150,height: 130,),
    );
  }

}
