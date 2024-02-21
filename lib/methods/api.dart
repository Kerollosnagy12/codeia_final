import 'dart:convert';

import 'package:codeia_final/constants.dart';
import 'package:http/http.dart' as http;

class API {
  postRequest({
    required String route,
    required Map<String, String> data,
  }) {
    String url = apiUrl + route;
    http.post(Uri.parse(url), body: jsonEncode(data), headers: _header());
  }

  _header() =>
      {'Content-type': 'application/jason', 'Accept': 'application/jason'};
}
