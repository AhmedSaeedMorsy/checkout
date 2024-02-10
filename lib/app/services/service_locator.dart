import 'package:get_it/get_it.dart';

import 'stripe_services.dart';

class ServiceLocator {
  static final getIt = GetIt.instance;
  void init() {
    getIt.registerSingleton<StripeServices>(StripeServices());
  }
}
