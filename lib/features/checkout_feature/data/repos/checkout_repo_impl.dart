import 'package:checkout/app/error/failure.dart';
import 'package:checkout/app/services/stripe_services.dart';
import 'package:checkout/features/checkout_feature/data/models/paymentintent_data_input_model/paymentintent_data_input_model.dart';
import 'package:dartz/dartz.dart';
import 'checkout_repo.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final StripeServices stripeServices = StripeServices();

  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentintentDataInputModel
          paymentintentDataInputModel}) async {
    try {
      await stripeServices.makePayment(
          paymentintentDataInputModel: paymentintentDataInputModel);
      return right(null);
    } catch (e) {
      return left(ServerError(message: e.toString()));
    }
  }
}
