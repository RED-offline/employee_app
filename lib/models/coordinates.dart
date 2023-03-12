import 'dart:convert';

class Coordinates {
  Coordinates({
    required this.lat,
    required this.lng,
  });

  factory Coordinates.fromMap(Map<String, dynamic> json) => Coordinates(
        lat: json['lat'] as double,
        lng: json['lng'] as double,
      );

  factory Coordinates.fromJson(String str) =>
      Coordinates.fromMap(json.decode(str) as Map<String, dynamic>);

  final double lat;
  final double lng;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'lat': lat,
        'lng': lng,
      };
}
