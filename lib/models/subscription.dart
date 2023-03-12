import 'dart:convert';

import 'package:employee_app/models/status.dart';
import 'package:employee_app/models/term.dart';

class Subscription {
  Subscription({
    required this.plan,
    required this.status,
    required this.paymentMethod,
    required this.term,
  });

  factory Subscription.fromMap(Map<String, dynamic> json) => Subscription(
        plan: json['plan'] as String,
        status: statusValues.map[json['status']]!,
        paymentMethod: json['payment_method'] as String,
        term: termValues.map[json['term']]!,
      );

  factory Subscription.fromJson(String str) =>
      Subscription.fromMap(json.decode(str) as Map<String, dynamic>);

  final String plan;
  final Status status;
  final String paymentMethod;
  final Term term;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'plan': plan,
        'status': statusValues.reverse[status],
        'payment_method': paymentMethod,
        'term': termValues.reverse[term],
      };
}
