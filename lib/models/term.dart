import 'package:employee_app/models/enum_values.dart';

// ignore: constant_identifier_names
enum Term { FULL_SUBSCRIPTION, MONTHLY, ANNUAL, PAYMENT_IN_ADVANCE }

final termValues = EnumValues({
  'Annual': Term.ANNUAL,
  'Full subscription': Term.FULL_SUBSCRIPTION,
  'Monthly': Term.MONTHLY,
  'Payment in advance': Term.PAYMENT_IN_ADVANCE
});
