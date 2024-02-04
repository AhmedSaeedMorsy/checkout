import 'package:checkout/app/utils/themes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'features/checkout_feature/presentation/screens/checkout_screen.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const Checkout()));
}

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkout app',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: const CheckoutScreen(),
    );
  }
}
