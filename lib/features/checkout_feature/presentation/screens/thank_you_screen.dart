import 'package:flutter/material.dart';

import '../widgets/check_coreect_widget.dart';
import '../widgets/dashed_divider_widget.dart';
import '../widgets/thank_you_content_widget.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: customAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          top: 80,
          right: 16,
          bottom: 16,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const ThankYouContentWidget(),
            Positioned(
              left: -20,
              bottom: MediaQuery.sizeOf(context).height / 5,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              right: -20,
              bottom: MediaQuery.sizeOf(context).height / 5,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            const DashedDividerWidget(),
            const CheckCorrectWidget(),
          ],
        ),
      ),
    );
  }
}
