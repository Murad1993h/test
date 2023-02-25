/*
import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://codecell.live/api/customer/signup';

  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
      }),
    );

    if (response.statusCode == 201) {

      final responseData = jsonDecode(response.body);
      final token = responseData['access_token'];
      // Save the token to local storage or store it in a state management system
    } else {
      final errors = jsonDecode(response.body)['errors'];
      // Handle validation errors
    }
  }
}*/
