import 'package:flutter/material.dart';

class DashedDividerWidget extends StatelessWidget {
  const DashedDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height / 5 + 20,
      left: 25,
      right: 25,
      child: Row(
        children: List.generate(
          20,
          (index) => Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                height: 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: const Color(0xFFB7B7B7)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
