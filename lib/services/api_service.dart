import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/settings.dart';
import '../utils/constants.dart';

class ApiService {
  Future<Settings> fetchSettings() async {
    final response = await http.get(Uri.parse('$baseUrl/settings'));
    if (response.statusCode == 200) {
      return Settings.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load settings');
    }
  }

  Future<void> updateSettings(Settings settings) async {
    await http.post(
      Uri.parse('$baseUrl/settings'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(settings.toJson()),
    );
  }
}