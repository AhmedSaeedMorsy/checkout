import 'package:flutter/material.dart';

class OrderInfoWidget extends StatelessWidget {
  const OrderInfoWidget({super.key, required this.value, required this.title});
  final String value;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        const Spacer(),
        Text(
          value,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
