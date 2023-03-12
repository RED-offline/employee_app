class EnumValues<T> {

  EnumValues(this.map);
  Map<String, T> map;
  late Map<T, String> reverseMap;

  Map<T, String> get reverse {
    // ignore: join_return_with_assignment
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
