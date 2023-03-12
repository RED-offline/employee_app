import 'dart:convert';

import 'package:employee_app/models/coordinates.dart';
import 'package:employee_app/models/country.dart';

class Address {
  Address({
    required this.city,
    required this.streetName,
    required this.streetAddress,
    required this.zipCode,
    required this.state,
    required this.country,
    required this.coordinates,
  });

  factory Address.fromMap(Map<String, dynamic> json) => Address(
        city: json['city'] as String,
        streetName: json['street_name'] as String,
        streetAddress: json['street_address'] as String,
        zipCode: json['zip_code'] as String,
        state: json['state'] as String,
        country: countryValues.map[json['country']]!,
        coordinates:
            Coordinates.fromMap(json['coordinates'] as Map<String, dynamic>),
      );

  factory Address.fromJson(String str) =>
      Address.fromMap(json.decode(str) as Map<String, dynamic>);

  final String city;
  final String streetName;
  final String streetAddress;
  final String zipCode;
  final String state;
  final Country country;
  final Coordinates coordinates;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'city': city,
        'street_name': streetName,
        'street_address': streetAddress,
        'zip_code': zipCode,
        'state': state,
        'country': countryValues.reverse[country],
        'coordinates': coordinates.toMap(),
      };
}
