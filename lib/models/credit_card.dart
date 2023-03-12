import 'dart:convert';

class CreditCard {
  CreditCard({
    required this.ccNumber,
  });

  factory CreditCard.fromMap(Map<String, dynamic> json) => CreditCard(
        ccNumber: json['cc_number'] as String,
      );

  factory CreditCard.fromJson(String str) =>
      CreditCard.fromMap(json.decode(str) as Map<String, dynamic>);

  final String ccNumber;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'cc_number': ccNumber,
      };
}
