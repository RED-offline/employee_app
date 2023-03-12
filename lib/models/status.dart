import 'package:employee_app/models/enum_values.dart';

// ignore: constant_identifier_names
enum Status { PENDING, IDLE, ACTIVE, BLOCKED }

final statusValues = EnumValues({
  'Active': Status.ACTIVE,
  'Blocked': Status.BLOCKED,
  'Idle': Status.IDLE,
  'Pending': Status.PENDING
});
