import 'package:checkout/app/services/dio_services.dart';
import 'package:checkout/app/utils/api_keys.dart';
import 'package:checkout/features/checkout_feature/data/models/paymentintent_data_input_model/paymentintent_data_input_model.dart';

import '../../features/checkout_feature/data/models/paymentintent_data_model/paymentintent_data_model.dart';
import '../utils/api_constant.dart';

class StripeServices {
  final DioServices dioServices = DioServices();

  Future<PaymentintentDataModel> createPaymentIntent(
      PaymentintentDataInputModel paymentintentDataInputModel) async {
    var response = await dioServices.post(
      path: ApiConstant.createPaymentIntentPath,
      data: paymentintentDataInputModel.toJson(),
      token: ApiKeys.secretPaymentKey,
    );
    var paymentIntentModel = PaymentintentDataModel.fromJson(response.data);
    return paymentIntentModel;
  }
}
