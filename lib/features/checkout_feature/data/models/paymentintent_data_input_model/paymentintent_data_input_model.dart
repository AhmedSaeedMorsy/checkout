class PaymentintentDataInputModel {
  final String amount;
  final String currency;

  PaymentintentDataInputModel({required this.amount, required this.currency});
  Map toJson() => {
        "amount": amount,
        "currency": currency,
      };
}
