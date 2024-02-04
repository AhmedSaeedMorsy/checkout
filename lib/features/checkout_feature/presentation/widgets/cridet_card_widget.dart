import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCardWidget extends StatefulWidget {
  const CustomCreditCardWidget({
    super.key,
    required this.formKey,
  });
  final GlobalKey<FormState> formKey;
  @override
  State<CustomCreditCardWidget> createState() => _CustomCreditCardWidgetState();
}

class _CustomCreditCardWidgetState extends State<CustomCreditCardWidget> {
  String cardNumber = "", expiryDate = "", cardHolderName = "", cvvCode = "";
  bool isShowBackView = false;

  CardType value = CardType.visa;

  _CustomCreditCardWidgetState();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            isHolderNameVisible: true,
            showBackView: isShowBackView,
            onCreditCardWidgetChange: (value) {},
            bankName: "Al-Ahly",
            cardType: CardType.visa,
          ),
        ),
        SliverToBoxAdapter(
          child: CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (CreditCardModel creditCardModel) {
              cardNumber = creditCardModel.cardNumber;
              expiryDate = creditCardModel.expiryDate;
              cardHolderName = creditCardModel.cardHolderName;
              cvvCode = creditCardModel.cvvCode;
              isShowBackView = creditCardModel.isCvvFocused;
              setState(() {});
            },
            formKey: widget.formKey,
          ),
        ),
      ],
    );
  }
}
