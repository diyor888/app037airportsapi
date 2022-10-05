import 'dart:convert';

import 'package:app037airportsapi/models/fulldata.dart';
import 'package:http/http.dart';

class Network {
  static String Base = "flight-radar1.p.rapidapi.com";
  static Map<String, String> hearders = {
    'X-RapidAPI-Key': '530fd1059cmsh900689095c819b7p13ab08jsn4c79da04130d',
    'X-RapidAPI-Host': 'flight-radar1.p.rapidapi.com'
  };

  static String Api = "/airports/list";

  static Future GET(String api, Map<String, String> params) async {
    var uri = Uri.https(Base, api, params);
    var response = await get(uri, headers: hearders);
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  static Map<String, String> paramsEmpty() {
    Map<String, String> params = new Map();
    return params;
  }
  // parsing
  static parseAll (String body) {
    dynamic json = jsonDecode(body);
    var data = FullData.fromJson(json);
    return data;
  }
}
