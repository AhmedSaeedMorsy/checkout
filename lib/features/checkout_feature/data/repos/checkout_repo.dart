// ignore_for_file: file_names

import 'package:checkout/features/checkout_feature/data/models/paymentintent_data_input_model/paymentintent_data_input_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../app/error/failure.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment({
    required PaymentintentDataInputModel paymentintentDataInputModel,
  });
}
