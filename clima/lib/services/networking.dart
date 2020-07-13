import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String _url;

  NetworkHelper(this._url);

  Future getData() async {
    var response = await http.get(this._url);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
  }
}
