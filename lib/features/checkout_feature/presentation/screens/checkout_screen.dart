import 'package:checkout/features/checkout_feature/presentation/widgets/order_info_widget.dart';
import 'package:checkout/features/checkout_feature/presentation/widgets/total_order_widget.dart';
import 'package:flutter/material.dart';

import '../../../../app/utils/asset_images.dart';
import '../widgets/custom_appBar_widget.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/payment_method_bottom_sheet_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "My Cart"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: Image.asset(
                Assets.assetsImagesBasket,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const OrderInfoWidget(value: r"42.97$", title: "Order Subtotal"),
            const SizedBox(
              height: 3,
            ),
            const OrderInfoWidget(value: r"0$", title: "Discount"),
            const SizedBox(
              height: 3,
            ),
            const OrderInfoWidget(value: r"8$", title: "Shipping"),
            const SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.infinity,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 2,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFC6C6C6),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const TotalOrderWidget(value: r"$50.97"),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              title: 'Complete Payment',
              onPressed: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        16,
                      ),
                      topRight: Radius.circular(
                        16,
                      ),
                    ),
                  ),
                  context: context,
                  builder: (context) => const PaymentMethodBottomSheet(),
                );
              },
            ),
            const SizedBox(
              height: 17,
            ),
          ],
        ),
      ),
    );
  }
}
