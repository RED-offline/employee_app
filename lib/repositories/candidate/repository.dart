import 'package:dio/dio.dart';

import 'package:employee_app/models/candidate.dart';

class CandidateRepository {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://random-data-api.com/api/v2',
    ),
  );

  Future<List<Candidate>> candidates({int size = 20}) async {
    // ignore: inference_failure_on_function_invocation
    final response = await _dio.get('/users', queryParameters: {'size': size});

    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(
        response.data as Iterable<dynamic>? ?? [],
      ).map(Candidate.fromMap).toList();
    } else {
      return [];
    }
  }
}
