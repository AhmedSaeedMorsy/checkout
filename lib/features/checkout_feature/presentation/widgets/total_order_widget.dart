import 'package:flutter/material.dart';

class TotalOrderWidget extends StatelessWidget {
  const TotalOrderWidget({
    super.key,
    required this.value,
  });
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Total",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Text(
          value,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ],
    );
  }
}
