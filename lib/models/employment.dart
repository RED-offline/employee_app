import 'dart:convert';

class Employment {
  Employment({
    required this.title,
    required this.keySkill,
  });

  factory Employment.fromMap(Map<String, dynamic> json) => Employment(
        title: json['title'] as String,
        keySkill: json['key_skill'] as String,
      );

  factory Employment.fromJson(String str) =>
      Employment.fromMap(json.decode(str) as Map<String, dynamic>);

  final String title;
  final String keySkill;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'title': title,
        'key_skill': keySkill,
      };
}
