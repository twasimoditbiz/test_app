import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:test_works/app/services/model/api_model.dart';

class ApiService {
  final String baseUrl = 'https://trogon.info/tutorpro/edspark/api/';
  final String authToken =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIiLCJ1c2VyX2lkIjoiMiIsInJvbGVfaWQiOiIyIiwicm9sZV9sYWJlbCI6IlVzZXIiLCJwaG9uZSI6Ijk5NDY4MDExMDAifQ.BcHZkDQ_VPPQ-jnOtS4Tnwx_4GqQ9761q7BUOjPpML8';

  Future<Course> fetchCourses() async {
    final response = await http.get(
      Uri.parse('$baseUrl/my_course?auth_token=$authToken'),
    );
    log("response data => ${response.body}");
    if (response.statusCode == 200) {
      return Course.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load courses');
    }
  }

  // Future<Level> fetchLevelsByCourse(int courseId, int sectionId) async {
  //   final response = await http.get(
  //     Uri.parse('$baseUrl/levels_by_course?course_id=$courseId&section_id=$sectionId&auth_token=$authToken'),
  //   );

  //   if (response.statusCode == 200) {
  //     final List levels = json.decode(response.body);
  //     return levels.map((level) => Level.fromJson(level)).toList();
  //   } else {
  //     throw Exception('Failed to load levels');
  //   }
  // }

  // Future<LessonVideo> fetchLessonVideos(int lessonId) async {
  //   final response = await http.get(
  //     Uri.parse('$baseUrl/get_lesson_videos?lesson_id=$lessonId&auth_token=$authToken'),
  //   );

  //   if (response.statusCode == 200) {
  //     final List videos = json.decode(response.body);
  //     return videos.map((video) => LessonVideo.fromJson(video)).toList();
  //   } else {
  //     throw Exception('Failed to load videos');
  //   }
  // }
}
