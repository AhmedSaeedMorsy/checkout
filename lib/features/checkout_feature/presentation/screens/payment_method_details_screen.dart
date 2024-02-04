import 'dart:developer';

import 'package:checkout/features/checkout_feature/presentation/screens/thank_you_screen.dart';
import 'package:checkout/features/checkout_feature/presentation/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/cridet_card_widget.dart';
import '../widgets/custom_appbar_widget.dart';

class PaymentMethodDetailsScreen extends StatefulWidget {
  const PaymentMethodDetailsScreen({super.key});

  @override
  State<PaymentMethodDetailsScreen> createState() =>
      _PaymentMethodDetailsScreenState();
}

class _PaymentMethodDetailsScreenState
    extends State<PaymentMethodDetailsScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Payment Details"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: CustomCreditCardWidget(
                formKey: formKey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CustomButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      log("success");
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ThankYouScreen(),
                        ),
                      );
                      log("validation faild");
                    }
                  },
                  title: "Payment"),
            ),
          ],
        ),
      ),
    );
  }
}
