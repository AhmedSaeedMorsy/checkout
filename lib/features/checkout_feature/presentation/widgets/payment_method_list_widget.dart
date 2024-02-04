import 'package:checkout/app/utils/asset_images.dart';
import 'package:checkout/features/checkout_feature/presentation/widgets/payment_method_widget.dart';
import 'package:flutter/material.dart';

class PaymentMethodListWidget extends StatefulWidget {
  const PaymentMethodListWidget({super.key});

  @override
  State<PaymentMethodListWidget> createState() =>
      _PaymentMethodListWidgetState();
}

class _PaymentMethodListWidgetState extends State<PaymentMethodListWidget> {
  int activeIndex = 0;
  final List<String> paymentImages = [
    Assets.assetsImagesVisa,
    Assets.assetsImagesPaypal,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: PaymentMethodWidget(
              image: paymentImages[index],
              isActive: activeIndex == index ? true : false,
            ),
          );
        },
        itemCount: paymentImages.length,
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
      ),
    );
  }
}
