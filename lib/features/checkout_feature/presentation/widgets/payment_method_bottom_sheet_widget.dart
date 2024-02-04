import 'package:checkout/features/checkout_feature/presentation/screens/payment_method_details_screen.dart';
import 'package:checkout/features/checkout_feature/presentation/widgets/custom_button_widget.dart';
import 'package:checkout/features/checkout_feature/presentation/widgets/payment_method_list_widget.dart';
import 'package:flutter/material.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PaymentMethodListWidget(),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PaymentMethodDetailsScreen(),
                ),
              );
            },
            title: "Continue",
          )
        ],
      ),
    );
  }
}
