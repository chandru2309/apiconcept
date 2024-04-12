import 'dart:convert';
import 'package:flutter/services.dart';
import 'module.dart';

class LessonApiService {
  static Future<LessonModel> fetchLessons() async {
    print('Reading from asset');
    final String response =
    await rootBundle.loadString('assets/sample_test.json');

    if (response != null) {
      Map<String, dynamic> jsonResponse = jsonDecode(response);
      print('${jsonResponse}');

      return LessonModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load lessons');
    }
  }
}
