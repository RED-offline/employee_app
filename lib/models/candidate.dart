// To parse this JSON data, do
//
//     final candidate = candidateFromMap(jsonString);

// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:employee_app/models/adress.dart';
import 'package:employee_app/models/credit_card.dart';
import 'package:employee_app/models/employment.dart';
import 'package:employee_app/models/subscription.dart';

class Candidate {
  Candidate({
    required this.id,
    required this.uid,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.avatar,
    required this.gender,
    required this.phoneNumber,
    required this.socialInsuranceNumber,
    required this.dateOfBirth,
    required this.employment,
    required this.address,
    required this.creditCard,
    required this.subscription,
  });

  factory Candidate.fromMap(Map<String, dynamic> json) => Candidate(
        id: json['id'] as int,
        uid: json['uid'] as String,
        password: json['password'] as String,
        firstName: json['first_name'] as String,
        lastName: json['last_name'] as String,
        username: json['username'] as String,
        email: json['email'] as String,
        avatar: json['avatar'] as String,
        gender: json['gender'] as String,
        phoneNumber: json['phone_number'] as String,
        socialInsuranceNumber: json['social_insurance_number'] as String,
        dateOfBirth: DateTime.parse(json['date_of_birth'] as String),
        employment:
            Employment.fromMap(json['employment'] as Map<String, dynamic>),
        address: Address.fromMap(json['address'] as Map<String, dynamic>),
        creditCard:
            CreditCard.fromMap(json['credit_card'] as Map<String, dynamic>),
        subscription:
            Subscription.fromMap(json['subscription'] as Map<String, dynamic>),
      );

  factory Candidate.fromJson(String str) =>
      Candidate.fromMap(json.decode(str) as Map<String, dynamic>);

  final int id;
  final String uid;
  final String password;
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String avatar;
  final String gender;
  final String phoneNumber;
  final String socialInsuranceNumber;
  final DateTime dateOfBirth;
  final Employment employment;
  final Address address;
  final CreditCard creditCard;
  final Subscription subscription;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'id': id,
        'uid': uid,
        'password': password,
        'first_name': firstName,
        'last_name': lastName,
        'username': username,
        'email': email,
        'avatar': avatar,
        'gender': gender,
        'phone_number': phoneNumber,
        'social_insurance_number': socialInsuranceNumber,
        'date_of_birth':
            "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        'employment': employment.toMap(),
        'address': address.toMap(),
        'credit_card': creditCard.toMap(),
        'subscription': subscription.toMap(),
      };
}
