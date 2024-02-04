import 'package:flutter/material.dart';

class CheckCorrectWidget extends StatelessWidget {
  const CheckCorrectWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 0,
      right: 0,
      top: -40,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Color(0xFFD9D9D9),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xFF34A853),
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
